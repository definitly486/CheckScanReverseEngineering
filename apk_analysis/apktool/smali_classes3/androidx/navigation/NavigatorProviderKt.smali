.class public final Landroidx/navigation/NavigatorProviderKt;
.super Ljava/lang/Object;


# direct methods
.method public static final get(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)Landroidx/navigation/Navigator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>(",
            "Landroidx/navigation/NavigatorProvider;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Landroidx/navigation/NavigatorProviderKt__NavigatorProviderKt;->get(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Landroidx/navigation/NavigatorProvider;Lne4;)Landroidx/navigation/Navigator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>(",
            "Landroidx/navigation/NavigatorProvider;",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/navigation/NavigatorProviderKt__NavigatorProvider_androidKt;->get(Landroidx/navigation/NavigatorProvider;Lne4;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static final plusAssign(Landroidx/navigation/NavigatorProvider;Landroidx/navigation/Navigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/navigation/NavigatorProviderKt__NavigatorProviderKt;->plusAssign(Landroidx/navigation/NavigatorProvider;Landroidx/navigation/Navigator;)V

    return-void
.end method

.method public static final set(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/navigation/NavigatorProviderKt__NavigatorProviderKt;->set(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method
