<#if isWithPackage?exists && isWithPackage==true>package com.yiheni.msop.openfeign.client.${classInfo.className?uncap_first};</#if>

<#if isAutoImport?exists && isAutoImport==true>
import ${contractPackageName}.${classInfo.className}Contract;
import com.yiheni.msop.openfeign.client.${classInfo.className?uncap_first}.fallback.${classInfo.className}FallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;
</#if>

/**
 * ${classInfo.classComment} - feign client
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
@FeignClient(name = "${serviceName!"unset"}", fallbackFactory = ${classInfo.className}FallbackFactory.class)
public interface ${classInfo.className}FeignClient extends ${classInfo.className}Contract {



}
