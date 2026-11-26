.class public final Landroidx/navigation/serialization/NavTypeConverterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final getNavType(Lmp7;)Landroidx/navigation/NavType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmp7;",
            ")",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lmp7;)Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    sget-object v1, Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    return-object p0

    :pswitch_0
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->parseNullableEnum(Lmp7;)Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0, v2}, Lmp7;->d(I)Lmp7;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lmp7;)Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    return-object p0

    :pswitch_2
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->parseEnumList(Lmp7;)Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/navigation/NavType;->LongListType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/navigation/NavType;->FloatListType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getDoubleListType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Landroidx/navigation/NavType;->BoolListType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_7
    sget-object p0, Landroidx/navigation/NavType;->IntListType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_8
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getStringNullableListType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Landroidx/navigation/NavType;->StringListType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_a
    invoke-interface {p0, v2}, Lmp7;->d(I)Lmp7;

    move-result-object p0

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lmp7;)Landroidx/navigation/serialization/InternalType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getStringNullableArrayType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_b
    sget-object p0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_c
    sget-object p0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_d
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getDoubleArrayType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object p0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_f
    sget-object p0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_10
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getLongNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getFloatNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getDoubleNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getBoolNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getIntNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->parseEnum(Lmp7;)Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_17
    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_18
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getDoubleType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_1a
    sget-object p0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_1b
    sget-object p0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object p0

    :pswitch_1c
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {p0}, Landroidx/navigation/serialization/InternalNavType;->getStringNonNullableType()Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final matchKType(Lmp7;Lef4;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lmp7;->b()Z

    move-result v0

    invoke-interface {p1}, Lef4;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lnq7;->a:Ltp7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v2}, Liq7;->c(Ljq7;Lef4;Z)Ldf4;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    const-string p1, "]. If applicable, custom KSerializers for custom and third-party KType is currently not supported when declared directly on a class field via @Serializable(with = ...). Please use @Serializable or @Serializable(with = ...) on the class or object declaration."

    const-string v0, "Cannot find KSerializer for ["

    invoke-static {p0, v0, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method private static final toInternalType(Lmp7;)Landroidx/navigation/serialization/InternalType;
    .locals 3

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object v1

    sget-object v2, Lsp7$b;->a:Lsp7$b;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/navigation/serialization/InternalType;->ENUM_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/navigation/serialization/InternalType;->ENUM:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_1
    const-string v1, "kotlin.Int"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/navigation/serialization/InternalType;->INT_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/navigation/serialization/InternalType;->INT:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_3
    const-string v1, "kotlin.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/navigation/serialization/InternalType;->BOOL_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/navigation/serialization/InternalType;->BOOL:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_5
    const-string v1, "kotlin.Double"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/navigation/serialization/InternalType;->DOUBLE_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_6
    sget-object p0, Landroidx/navigation/serialization/InternalType;->DOUBLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_7
    const-string v1, "kotlin.Float"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Landroidx/navigation/serialization/InternalType;->FLOAT_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_8
    sget-object p0, Landroidx/navigation/serialization/InternalType;->FLOAT:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_9
    const-string v1, "kotlin.Long"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Landroidx/navigation/serialization/InternalType;->LONG_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_a
    sget-object p0, Landroidx/navigation/serialization/InternalType;->LONG:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_b
    const-string v1, "kotlin.String"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroidx/navigation/serialization/InternalType;->STRING_NULLABLE:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_c
    sget-object p0, Landroidx/navigation/serialization/InternalType;->STRING:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_d
    const-string p0, "kotlin.IntArray"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Landroidx/navigation/serialization/InternalType;->INT_ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_e
    const-string p0, "kotlin.DoubleArray"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Landroidx/navigation/serialization/InternalType;->DOUBLE_ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_f
    const-string p0, "kotlin.BooleanArray"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Landroidx/navigation/serialization/InternalType;->BOOL_ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_10
    const-string p0, "kotlin.FloatArray"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Landroidx/navigation/serialization/InternalType;->FLOAT_ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_11
    const-string p0, "kotlin.LongArray"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Landroidx/navigation/serialization/InternalType;->LONG_ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_12
    const-string p0, "kotlin.Array"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Landroidx/navigation/serialization/InternalType;->ARRAY:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_13
    const-string p0, "kotlin.collections.ArrayList"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Landroidx/navigation/serialization/InternalType;->LIST:Landroidx/navigation/serialization/InternalType;

    return-object p0

    :cond_14
    sget-object p0, Landroidx/navigation/serialization/InternalType;->UNKNOWN:Landroidx/navigation/serialization/InternalType;

    return-object p0
.end method
