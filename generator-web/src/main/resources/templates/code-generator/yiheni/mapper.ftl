<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.repository;</#if>

<#if isAutoImport?exists && isAutoImport==true>
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ${packageName}.domain.${classInfo.className};
</#if>

/**
 * ${classInfo.classComment} - mapper
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
@Repository
@Mapper
public interface ${classInfo.className}Mapper extends BaseMapper<${classInfo.className}> {

}
