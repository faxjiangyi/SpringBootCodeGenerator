<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.infrastruture.helper.impl;</#if>

<#if isAutoImport?exists && isAutoImport==true>
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import ${packageName}.domain.${classInfo.className};
import ${packageName}.infrastructure.helper.${classInfo.className}Helper;
import ${packageName}.repository.${classInfo.className}Mapper;
</#if>

/**
 * ${classInfo.classComment} - helper实现类
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ${classInfo.className}HelperImpl
        extends ServiceImpl<${classInfo.className}Mapper, ${classInfo.className}>
        implements ${classInfo.className}Helper {

    /* ************************************ fields ******************************************* */



    /* ************************************ Overrides **************************************** */



    /* ************************************ Private Methods ********************************** */


}
