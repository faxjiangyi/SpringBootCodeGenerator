<#if isWithPackage?exists && isWithPackage==true>package ${contractPackageName}.vo;</#if>

<#if isAutoImport?exists && isAutoImport==true>
<#if isSwagger?exists && isSwagger==true>
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
</#if>
<#if isLombok?exists && isLombok==true>
import lombok.Data;
</#if>
import java.util.Date;
import java.util.List;
</#if>

/**
 * ${classInfo.classComment} - VO
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
<#if isLombok?exists && isLombok==true>@Data</#if>
<#if isSwagger?exists && isSwagger==true>@ApiModel("${classInfo.classComment}-VO")</#if>
public class ${classInfo.className}VO {

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    @ApiModelProperty("${fieldItem.fieldComment}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>

</#if>
}
