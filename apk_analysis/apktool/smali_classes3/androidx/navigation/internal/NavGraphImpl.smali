.class public final Landroidx/navigation/internal/NavGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final graph:Landroidx/navigation/NavGraph;

.field private final nodes:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private startDestId:I

.field private startDestIdName:Ljava/lang/String;

.field private startDestinationRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    new-instance p1, Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(IILjh2;)V

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method public static synthetic a(Landroidx/navigation/NavDestination;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestination$lambda$12(Landroidx/navigation/NavDestination;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Landroidx/navigation/NavDestination;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestination$lambda$14(Ljava/lang/Object;Landroidx/navigation/NavDestination;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findNodeComprehensive$navigation_common_release$default(Landroidx/navigation/internal/NavGraphImpl;ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavGraphImpl;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method private static final setStartDestination$lambda$12(Landroidx/navigation/NavDestination;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private static final setStartDestination$lambda$14(Ljava/lang/Object;Landroidx/navigation/NavDestination;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavArgument;

    invoke-virtual {v1}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAll$navigation_common_release(Landroidx/navigation/NavGraph;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavGraphImpl;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Destination "

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot have the same route as graph "

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, p1, p0}, Li2;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    :cond_5
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    :cond_6
    const-string p0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot have the same id as graph "

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, p1, p0}, Li2;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final addDestinations$navigation_common_release(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavGraphImpl;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final varargs addDestinations$navigation_common_release([Landroidx/navigation/NavDestination;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 28
    invoke-virtual {p0, v2}, Landroidx/navigation/internal/NavGraphImpl;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clear$navigation_common_release()V
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavGraphImpl;->iterator$navigation_common_release()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;
    .locals 7

    .line 82
    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/navigation/internal/NavGraphImpl;->findNodeComprehensive$navigation_common_release$default(Landroidx/navigation/internal/NavGraphImpl;ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findNode$navigation_common_release(Ljava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    .line 85
    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNode$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 1

    if-eqz p1, :cond_1

    .line 83
    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/internal/NavGraphImpl;->findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ldp7;->f(Ljava/util/Iterator;)Lzo7;

    move-result-object v0

    check-cast v0, Llx1;

    invoke-virtual {v0}, Llx1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/navigation/NavDestination;

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    check-cast v1, Landroidx/navigation/NavDestination;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2

    :cond_4
    return-object v1
.end method

.method public final findNode$navigation_common_release(Lne4;)Landroidx/navigation/NavDestination;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "*>;)",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 5

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    invoke-static {v0, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-virtual {p4}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    if-eqz p3, :cond_6

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ldp7;->f(Ljava/util/Iterator;)Lzo7;

    move-result-object v0

    check-cast v0, Llx1;

    invoke-virtual {v0}, Llx1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    instance-of v3, v2, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_4

    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v2, Landroidx/navigation/NavGraph;

    iget-object v3, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4, p4}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p2, p1, p0, p3, p4}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    return-object v0
.end method

.method public final getDisplayName$navigation_common_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "the root navigation"

    return-object p0
.end method

.method public final getGraph()Landroidx/navigation/NavGraph;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    return-object p0
.end method

.method public final getNodes$navigation_common_release()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public final getStartDestDisplayName$navigation_common_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestIdName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestinationRoute:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestIdName:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final getStartDestId$navigation_common_release()I
    .locals 0

    iget p0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    return p0
.end method

.method public final getStartDestIdName$navigation_common_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestIdName:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartDestinationId$navigation_common_release()I
    .locals 0

    iget p0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    return p0
.end method

.method public final getStartDestinationRoute$navigation_common_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestinationRoute:Ljava/lang/String;

    return-object p0
.end method

.method public final iterator$navigation_common_release()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    invoke-direct {v0, p0}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;-><init>(Landroidx/navigation/internal/NavGraphImpl;)V

    return-object v0
.end method

.method public final matchDeepLink$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/navigation/internal/NavGraphImpl;->matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p0

    return-object p0
.end method

.method public final matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    invoke-static {v3, p5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p2}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lqn1;->d0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {v2, p5}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p4, 0x1

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2, p2, p3, p4, p0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    :cond_4
    filled-new-array {p1, v1, v0}, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p0

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lqn1;->d0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    return-object p0
.end method

.method public final matchRouteComprehensive$navigation_common_release(Ljava/lang/String;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object v3, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    invoke-static {v5, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    instance-of v6, v5, Landroidx/navigation/NavGraph;

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/navigation/NavGraph;

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v5, p1, v1, v6, v7}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v5, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lqn1;->d0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination$DeepLinkMatch;

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    iget-object v4, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {v4, p4}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v4, p1, p2, v1, p0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v2

    :cond_5
    filled-new-array {v0, v3, v2}, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p0

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lqn1;->d0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    return-object p0
.end method

.method public final remove$navigation_common_release(Landroidx/navigation/NavDestination;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public final setStartDestId$navigation_common_release(I)V
    .locals 0

    iput p1, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    return-void
.end method

.method public final setStartDestIdName$navigation_common_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestIdName:Ljava/lang/String;

    return-void
.end method

.method public final setStartDestination$navigation_common_release(I)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestinationId$navigation_common_release(I)V

    return-void
.end method

.method public final setStartDestination$navigation_common_release(Ldf4;Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavDestination;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavGraphImpl;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    iput v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    return-void

    :cond_0
    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    const-string p1, " from NavGraph. Ensure the starting NavDestination was added with route from KClass."

    const-string p2, "Cannot find startDestination "

    invoke-static {p0, p2, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStartDestination$navigation_common_release(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    .line 47
    invoke-static {v0}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    .line 48
    new-instance v1, Lws2;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lws2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestination$navigation_common_release(Ldf4;Lnl3;)V

    return-void
.end method

.method public final setStartDestination$navigation_common_release(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    return-void
.end method

.method public final setStartDestination$navigation_common_release(Lne4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object p1

    .line 50
    new-instance v0, Lpf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lpf;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestination$navigation_common_release(Ldf4;Lnl3;)V

    return-void
.end method

.method public final setStartDestinationId$navigation_common_release(I)V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestinationRoute:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavGraphImpl;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    iput-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestIdName:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "Start destination "

    const-string v1, " cannot use the same id as the graph "

    invoke-static {p1, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-static {p0, p1}, Lh2;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestId:I

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->startDestinationRoute:Ljava/lang/String;

    return-void

    :cond_1
    const-string p0, "Cannot have an empty start destination route"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "Start destination "

    const-string v1, " cannot use the same route as the graph "

    invoke-static {v0, p1, v1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->graph:Landroidx/navigation/NavGraph;

    invoke-static {p0, p1}, Lh2;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method
