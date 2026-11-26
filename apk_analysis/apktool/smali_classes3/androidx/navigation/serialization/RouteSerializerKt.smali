.class public final Landroidx/navigation/serialization/RouteSerializerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRouteWithArgs$lambda$5(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final assertNotAbstractClass(Ldf4;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    instance-of p0, p0, Lda6;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic b(Ldf4;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments$lambda$2(Ldf4;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ldf4;ILjava/util/Map;Ljava/lang/String;Landroidx/navigation/NavArgumentBuilder;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments$lambda$4$lambda$3(Ldf4;ILjava/util/Map;Ljava/lang/String;Landroidx/navigation/NavArgumentBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final computeNavType(Lmp7;Ljava/util/Map;)Landroidx/navigation/NavType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmp7;",
            "Ljava/util/Map<",
            "Lef4;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lef4;

    invoke-static {p0, v3}, Landroidx/navigation/serialization/NavTypeConverterKt;->matchKType(Lmp7;Lef4;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lef4;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavType;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_4

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->getNavType(Lmp7;)Landroidx/navigation/NavType;

    move-result-object p1

    :cond_4
    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public static synthetic d(Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRoutePattern$lambda$1(Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ldf4;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRoutePattern$lambda$0(Ldf4;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final forEachIndexedKType(Ldf4;Ljava/util/Map;Ldm3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lef4;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ldm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {v2, v1}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-interface {v3, v1}, Lmp7;->d(I)Lmp7;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lmp7;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p2

    invoke-interface {p2, v1}, Lmp7;->d(I)Lmp7;

    move-result-object p2

    invoke-interface {p2}, Lmp7;->h()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic forEachIndexedKType$default(Ldf4;Ljava/util/Map;Ldm3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedKType(Ldf4;Ljava/util/Map;Ldm3;)V

    return-void
.end method

.method private static final forEachIndexedName(Ldf4;Ljava/util/Map;Ldm3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ldm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {v2, v1}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavType;

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Cannot locate NavType for argument ["

    const/16 p1, 0x5d

    invoke-static {p1, p0, v2}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final generateHashCode(Ldf4;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {v1}, Lmp7;->e()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-interface {v3, v2}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final generateNavArguments(Ldf4;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lef4;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le84;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Le84;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->assertNotAbstractClass(Ldf4;Lll3;)V

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->e()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-interface {v3, v2}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ln87;

    invoke-direct {v4, p0, v2, p1, v3}, Ln87;-><init>(Ldf4;ILjava/util/Map;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lnl3;)Landroidx/navigation/NamedNavArgument;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic generateNavArguments$default(Ldf4;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    invoke-static {p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Ldf4;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final generateNavArguments$lambda$2(Ldf4;)Lj59;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot generate NavArguments for polymorphic serializer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Arguments can only be generated from concrete classes or objects."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final generateNavArguments$lambda$4$lambda$3(Ldf4;ILjava/util/Map;Ljava/lang/String;Landroidx/navigation/NavArgumentBuilder;)Lj59;
    .locals 3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->b()Z

    move-result v1

    invoke-static {v0, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lmp7;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p4, v2}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    invoke-virtual {p4, v1}, Landroidx/navigation/NavArgumentBuilder;->setNullable(Z)V

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->i(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Landroidx/navigation/NavArgumentBuilder;->setUnknownDefaultValuePresent$navigation_common_release(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-interface {v0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p0, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final generateRoutePattern(Ldf4;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lef4;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvc6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lvc6;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->assertNotAbstractClass(Ldf4;Lll3;)V

    if-eqz p2, :cond_0

    new-instance v0, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v0, p2, p0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Ljava/lang/String;Ldf4;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Ldf4;)V

    :goto_0
    new-instance p2, Ll87;

    invoke-direct {p2, v0}, Ll87;-><init>(Landroidx/navigation/serialization/RouteBuilder;)V

    invoke-static {p0, p1, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedKType(Ldf4;Ljava/util/Map;Ldm3;)V

    invoke-virtual {v0}, Landroidx/navigation/serialization/RouteBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic generateRoutePattern$default(Ldf4;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRoutePattern(Ldf4;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final generateRoutePattern$lambda$0(Ldf4;)Lj59;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot generate route pattern from polymorphic class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0}, Lly1;->c(Lmp7;)Lne4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v2, ". Routes can only be generated from concrete classes or objects."

    invoke-static {v1, p0, v2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final generateRoutePattern$lambda$1(Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/serialization/RouteBuilder;->appendPattern(ILjava/lang/String;Landroidx/navigation/NavType;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-static {v0}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    new-instance v1, Landroidx/navigation/serialization/RouteEncoder;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/serialization/RouteEncoder;-><init>(Ldf4;Ljava/util/Map;)V

    invoke-virtual {v1, p0}, Landroidx/navigation/serialization/RouteEncoder;->encodeToArgMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Ldf4;)V

    new-instance v2, Lm87;

    invoke-direct {v2, p0, v1}, Lm87;-><init>(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;)V

    invoke-static {v0, p1, v2}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedName(Ldf4;Ljava/util/Map;Ldm3;)V

    invoke-virtual {v1}, Landroidx/navigation/serialization/RouteBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final generateRouteWithArgs$lambda$5(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/navigation/serialization/RouteBuilder;->appendArg(ILjava/lang/String;Landroidx/navigation/NavType;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final isValueClass(Lmp7;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    sget-object v1, Leb8$a;->a:Leb8$a;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmp7;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmp7;->e()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " could not find any NavType for argument "

    const-string v1, " of type "

    const-string v2, "Route "

    invoke-static {v2, p2, v0, p0, v1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " - typeMap received was "

    invoke-static {p0, p1, p2, p3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
