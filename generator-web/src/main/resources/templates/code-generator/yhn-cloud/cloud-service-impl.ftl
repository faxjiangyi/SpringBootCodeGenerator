<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.service.impl;</#if>

<#if isAutoImport?exists && isAutoImport==true>
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import ${contractPackageName}.${classInfo.className}Contract;
import ${contractPackageName}.vo.${classInfo.className}VO;

import ${packageName}.domain.${classInfo.className};
import ${packageName}.infrastructure.helper.${classInfo.className}Helper;
</#if>

/**
 * ${classInfo.classComment} - service-ddd 实现类
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@ResponseBody
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Contract {

    /* ************************************ fields ******************************************* */

    private final ${classInfo.className}Helper ${classInfo.className?uncap_first}Helper;

    /* ************************************ Overrides **************************************** */



    /* ************************************ Private Methods ********************************** */

    private ${classInfo.className}VO convertVO(${classInfo.className} entity) {
        return JSON.parseObject(JSON.toJSONString(entity), ${classInfo.className}VO.class);
    }

    private ${classInfo.className} convertEntity(${classInfo.className}VO vo) {
        return JSON.parseObject(JSON.toJSONString(vo), ${classInfo.className}.class);
    }

}
