.class public final Lyads/v55;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/wb5;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/lang/Object;

.field public final d:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Lyads/wb5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v55;->a:Lyads/wb5;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/v55;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v55;->c:Ljava/lang/Object;

    new-instance p1, Lffa;

    invoke-direct {p1, p0}, Lffa;-><init>(Lyads/v55;)V

    iput-object p1, p0, Lyads/v55;->d:Landroidx/lifecycle/LifecycleEventObserver;

    return-void
.end method

.method public static final a(Lyads/v55;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    iget-object v0, p0, Lyads/v55;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/t55;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lyads/v55;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vq0;

    invoke-virtual {v1}, Lyads/vq0;->j()V

    iget-object v2, p0, Lyads/v55;->a:Lyads/wb5;

    iget-object v3, v2, Lyads/wb5;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lyads/wb5;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ub5;

    if-eqz v4, :cond_0

    invoke-interface {v4, v1}, Lyads/ub5;->a(Lyads/vq0;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v2, v2, Lyads/wb5;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lyads/v55;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleOwner;Lyads/vq0;)Ljava/lang/Object;
    .locals 3

    .line 104
    iget-object v0, p0, Lyads/v55;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lyads/v55;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v2, p0, Lyads/v55;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 107
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    filled-new-array {p2}, [Lyads/vq0;

    move-result-object p2

    invoke-static {p2}, Lmr7;->k([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lyads/v55;->d:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/vq0;)V
    .locals 1

    .line 111
    iget-object v0, p1, Lyads/vq0;->l:Lyads/pq0;

    .line 112
    iget-object v0, v0, Lyads/pq0;->c:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0, p1}, Lyads/v55;->a(Landroidx/lifecycle/LifecycleOwner;Lyads/vq0;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0, p1}, Lyads/v55;->a(Landroidx/lifecycle/LifecycleOwner;Lyads/vq0;)Ljava/lang/Object;

    return-void

    .line 117
    :cond_1
    sget p0, Lyads/rv3;->a:I

    .line 118
    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    return-void

    .line 119
    :cond_2
    new-instance v0, Lyads/u55;

    invoke-direct {v0, p1, p1, p0}, Lyads/u55;-><init>(Lyads/vq0;Lyads/vq0;Lyads/v55;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
