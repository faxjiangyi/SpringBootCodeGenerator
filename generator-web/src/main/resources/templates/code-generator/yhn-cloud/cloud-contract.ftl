<#if isWithPackage?exists && isWithPackage==true>package ${contractPackageName};</#if>

<#if isAutoImport?exists && isAutoImport==true>
<#if isSwagger?exists && isSwagger==true>
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
</#if>
</#if>

/**
 * ${classInfo.classComment} - API契约
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
<#if isSwagger?exists && isSwagger==true>@Api(tags = "${classInfo.classComment}-API")</#if>
@RequestMapping("${requestMapping!"unset"}")
public interface ${classInfo.className}Contract {



}
