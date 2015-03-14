/**
 * @param ${TYPE_HINT} $${PARAM_NAME}
 * @return ${CLASS_NAME}
 */
#if ( ${TYPE_HINT} != 'string' && ${TYPE_HINT} != 'int' && ${TYPE_HINT} != 'double' && ${TYPE_HINT} != 'float' && ${TYPE_HINT} != 'bool' )
public ${STATIC} function set${NAME}(${TYPE_HINT} $${PARAM_NAME})
#else
public ${STATIC} function set${NAME}($${PARAM_NAME})
#end
{
#if (${STATIC} == "static")
    self::$${FIELD_NAME} = $${PARAM_NAME};
#else
    $this->${FIELD_NAME} = $${PARAM_NAME};
    
    return $this;
#end
}
