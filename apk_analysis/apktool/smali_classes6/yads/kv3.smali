.class public final Lyads/kv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lyads/kv3;


# instance fields
.field public final a:Lyads/nv3;

.field public final b:Lyads/mv3;

.field public final c:Lyads/zg5;

.field public final d:Lyads/qi5;

.field public final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/kv3;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lyads/nv3;

    invoke-direct {v0}, Lyads/nv3;-><init>()V

    new-instance v1, Lyads/mv3;

    invoke-direct {v1}, Lyads/mv3;-><init>()V

    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_1

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_0

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    new-instance v3, Lyads/qi5;

    invoke-direct {v3}, Lyads/qi5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/kv3;->a:Lyads/nv3;

    iput-object v1, p0, Lyads/kv3;->b:Lyads/mv3;

    iput-object v2, p0, Lyads/kv3;->c:Lyads/zg5;

    iput-object v3, p0, Lyads/kv3;->d:Lyads/qi5;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/kv3;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 4

    sget-object v0, Lyads/kv3;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/kv3;->c:Lyads/zg5;

    invoke-virtual {v1}, Lyads/zg5;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/kv3;->d:Lyads/qi5;

    iget-object v2, p0, Lyads/kv3;->e:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/qi5;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lyads/kv3;->b:Lyads/mv3;

    iget-object v2, p0, Lyads/kv3;->e:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/mv3;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/lv3;

    invoke-interface {v3}, Lyads/lv3;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lu96;->d(Lar4;)Lar4;

    move-result-object v1

    iget-object p0, p0, Lyads/kv3;->a:Lyads/nv3;

    invoke-virtual {p0, v1}, Lyads/nv3;->a(Ljava/util/List;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method
