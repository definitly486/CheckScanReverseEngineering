.class public final Lyads/uu4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final h:Lyads/su4;

.field public static volatile i:Lyads/uu4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/zg5;

.field public final c:Lyads/qu4;

.field public final d:Lyads/pu4;

.field public final e:Ljava/util/WeakHashMap;

.field public final f:Ljava/lang/Object;

.field public g:Lyads/ou4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/su4;

    invoke-direct {v0}, Lyads/su4;-><init>()V

    sput-object v0, Lyads/uu4;->h:Lyads/su4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly22;)V
    .locals 3

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/qu4;

    invoke-direct {v1, p1}, Lyads/qu4;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/pu4;

    invoke-direct {v2}, Lyads/pu4;-><init>()V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lyads/uu4;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/uu4;->b:Lyads/zg5;

    iput-object v1, p0, Lyads/uu4;->c:Lyads/qu4;

    iput-object v2, p0, Lyads/uu4;->d:Lyads/pu4;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/uu4;->e:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uu4;->f:Ljava/lang/Object;

    sget-object p1, Lyads/ou4;->d:Lyads/ou4;

    iput-object p1, p0, Lyads/uu4;->g:Lyads/ou4;

    new-instance p1, Lyads/ru4;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyads/ru4;-><init>(Lyads/uu4;Le02;)V

    const/4 p0, 0x3

    invoke-static {p2, v0, v0, p1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public static final synthetic a(Lyads/uu4;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lyads/uu4;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic a(Lyads/uu4;Lyads/ou4;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lyads/uu4;->g:Lyads/ou4;

    return-void
.end method

.method public static final synthetic b(Lyads/uu4;)Lyads/qu4;
    .locals 0

    .line 13
    iget-object p0, p0, Lyads/uu4;->c:Lyads/qu4;

    return-object p0
.end method

.method public static final c(Lyads/uu4;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lyads/uu4;->d:Lyads/pu4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lyads/uu4;->a:Landroid/content/Context;

    const/16 v3, 0x21

    if-lt v1, v3, :cond_0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v2, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Lyads/tu4;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lyads/uu4;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object p0, p0, Lyads/uu4;->e:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lyads/uu4;->b:Lyads/zg5;

    iget-object v1, p0, Lyads/uu4;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    iget-object v1, p0, Lyads/uu4;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, v0, Lyads/fe5;->h:Z

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lyads/uu4;->g:Lyads/ou4;

    sget-object v0, Lyads/ou4;->b:Lyads/ou4;

    if-eq p0, v0, :cond_2

    sget-object v0, Lyads/ou4;->d:Lyads/ou4;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lyads/uu4;->g:Lyads/ou4;

    sget-object v0, Lyads/ou4;->d:Lyads/ou4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    monitor-exit v1

    return v2

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final b(Lyads/tu4;)V
    .locals 1

    iget-object v0, p0, Lyads/uu4;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/uu4;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lyads/uu4;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lyads/uu4;->g:Lyads/ou4;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {p2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Lyads/ou4;->c:Lyads/ou4;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {p2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p2, Lyads/ou4;->d:Lyads/ou4;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lyads/uu4;->g:Lyads/ou4;

    sget-object v2, Lyads/ou4;->d:Lyads/ou4;

    if-eq v1, v2, :cond_2

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {p2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lyads/ou4;->b:Lyads/ou4;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lyads/uu4;->g:Lyads/ou4;

    :goto_0
    iput-object p2, p0, Lyads/uu4;->g:Lyads/ou4;

    if-eq v0, p2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lyads/uu4;->g:Lyads/ou4;

    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lyads/uu4;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/tu4;

    invoke-interface {p1, p2}, Lyads/tu4;->a(Lyads/ou4;)V

    goto :goto_2

    :cond_5
    return-void

    :goto_3
    monitor-exit p1

    throw p0
.end method
