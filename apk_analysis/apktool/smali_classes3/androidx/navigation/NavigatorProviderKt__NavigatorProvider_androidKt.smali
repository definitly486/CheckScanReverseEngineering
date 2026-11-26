.class final synthetic Landroidx/navigation/NavigatorProviderKt__NavigatorProvider_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method
