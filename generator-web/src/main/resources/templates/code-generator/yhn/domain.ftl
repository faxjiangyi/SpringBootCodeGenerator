<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.domain;</#if>

<#if isAutoImport?exists && isAutoImport==true>
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
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
 * ${classInfo.classComment} - entity
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
<#if isLombok?exists && isLombok==true>@Data</#if>
<#if isSwagger?exists && isSwagger==true>@ApiModel("${classInfo.classComment}")</#if>
@TableName("${classInfo.tableName}")
public class ${classInfo.className} {

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    @TableId(type = IdType.INPUT)
<#list classInfo.fieldList as fieldItem >
    @ApiModelProperty("${fieldItem.fieldComment}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>

</#if>
}
