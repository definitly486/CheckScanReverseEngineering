.class final synthetic Landroidx/navigation/NavDeepLinkDslBuilderKt__NavDeepLinkDslBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final navDeepLink(Ljava/lang/String;Ljava/util/Map;Lnl3;)Landroidx/navigation/NavDeepLink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lef4;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lj59;",
            ">;)",
            "Landroidx/navigation/NavDeepLink;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final navDeepLink(Lne4;Ljava/lang/String;Ljava/util/Map;Lnl3;)Landroidx/navigation/NavDeepLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lef4;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lj59;",
            ">;)",
            "Landroidx/navigation/NavDeepLink;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigation/NavDeepLinkDslBuilder;

    invoke-direct {v0, p1, p0, p2}, Landroidx/navigation/NavDeepLinkDslBuilder;-><init>(Ljava/lang/String;Lne4;Ljava/util/Map;)V

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkDslBuilder;->build$navigation_common_release()Landroidx/navigation/NavDeepLink;

    move-result-object p0

    return-object p0
.end method

.method public static final navDeepLink(Lne4;Ljava/lang/String;Lnl3;)Landroidx/navigation/NavDeepLink;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lj59;",
            ">;)",
            "Landroidx/navigation/NavDeepLink;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavDeepLinkDslBuilderKt;->navDeepLink$default(Lne4;Ljava/lang/String;Ljava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/navigation/NavDeepLink;

    move-result-object p0

    return-object p0
.end method

.method public static final navDeepLink(Lnl3;)Landroidx/navigation/NavDeepLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lj59;",
            ">;)",
            "Landroidx/navigation/NavDeepLink;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v0, Landroidx/navigation/NavDeepLinkDslBuilder;

    invoke-direct {v0}, Landroidx/navigation/NavDeepLinkDslBuilder;-><init>()V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkDslBuilder;->build$navigation_common_release()Landroidx/navigation/NavDeepLink;

    move-result-object p0

    return-object p0
.end method

.method public static navDeepLink$default(Ljava/lang/String;Ljava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/navigation/NavDeepLink;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/navigation/NavDeepLinkDslBuilderKt__NavDeepLinkDslBuilderKt$navDeepLink$1;->INSTANCE:Landroidx/navigation/NavDeepLinkDslBuilderKt__NavDeepLinkDslBuilderKt$navDeepLink$1;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic navDeepLink$default(Lne4;Ljava/lang/String;Ljava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/navigation/NavDeepLink;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 26
    sget-object p2, Lmx2;->b:Lmx2;

    .line 27
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/NavDeepLinkDslBuilderKt;->navDeepLink(Lne4;Ljava/lang/String;Ljava/util/Map;Lnl3;)Landroidx/navigation/NavDeepLink;

    move-result-object p0

    return-object p0
.end method
