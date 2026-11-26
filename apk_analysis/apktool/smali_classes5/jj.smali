.class public final Ljj;
.super Li36;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/lifecycle/viewmodel/CreationExtras;


# direct methods
.method public constructor <init>(Lsk;Landroidx/lifecycle/viewmodel/CreationExtras;)V
    .locals 1

    invoke-virtual {p1}, Lsk;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li36;

    iget-object p1, p1, Li36;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Li36;-><init>(Ljava/util/ArrayList;I)V

    iput-object p2, p0, Ljj;->c:Landroidx/lifecycle/viewmodel/CreationExtras;

    return-void
.end method


# virtual methods
.method public final a(ILzk1;)Ljava/lang/Object;
    .locals 1

    const-class v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzk1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Ljj;->c:Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Koin could not create a SavedStateHandle: the ViewModel\'s CreationExtras has no SavedStateRegistryOwner. Resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner (e.g. a NavBackStackEntry), and inject SavedStateHandle directly in the ViewModel constructor (not lazily/outside construction)."

    invoke-static {p1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Li36;->a(ILzk1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "*>;)TT;"
        }
    .end annotation

    const-class v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Ljj;->c:Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Koin could not create a SavedStateHandle: the ViewModel\'s CreationExtras has no SavedStateRegistryOwner. Resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner (e.g. a NavBackStackEntry), and inject SavedStateHandle directly in the ViewModel constructor (not lazily/outside construction)."

    invoke-static {p1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Li36;->b(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
