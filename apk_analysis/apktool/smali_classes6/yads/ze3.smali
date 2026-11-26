.class public final Lyads/ze3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/d9;

.field public final b:Lyads/e4;

.field public final c:Lyads/j5;

.field public final d:Lyads/q84;

.field public final e:Lyads/fe5;

.field public final f:Lyads/e40;

.field public final g:Lyads/le;

.field public h:Lyads/zh4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/j5;)V
    .locals 3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p4, p4, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p4}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p4

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
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    new-instance v1, Lyads/e40;

    invoke-direct {v1}, Lyads/e40;-><init>()V

    new-instance v2, Lyads/le;

    invoke-direct {v2, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ze3;->a:Lyads/d9;

    iput-object p3, p0, Lyads/ze3;->b:Lyads/e4;

    iput-object p5, p0, Lyads/ze3;->c:Lyads/j5;

    iput-object p4, p0, Lyads/ze3;->d:Lyads/q84;

    iput-object v0, p0, Lyads/ze3;->e:Lyads/fe5;

    iput-object v1, p0, Lyads/ze3;->f:Lyads/e40;

    iput-object v2, p0, Lyads/ze3;->g:Lyads/le;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 4

    iget-object v0, p0, Lyads/ze3;->f:Lyads/e40;

    iget-object v1, p0, Lyads/ze3;->a:Lyads/d9;

    iget-object v2, p0, Lyads/ze3;->b:Lyads/e4;

    invoke-virtual {v0, v2, v1}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v0

    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/ze3;->b:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->d:Lyads/tl5;

    iget-object v1, v1, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v2

    iget-object v2, v2, Lyads/rl5;->b:Ljava/lang/String;

    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lyads/ze3;->e:Lyads/fe5;

    if-eqz v1, :cond_1

    const-string v2, "banner_size_calculation_type"

    iget-object v1, v1, Lyads/fe5;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lyads/ze3;->h:Lyads/zh4;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lyads/zh4;->a()Lyads/h75;

    move-result-object p0

    invoke-static {v0, p0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final a(Lyads/f66;)Lyads/h75;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lyads/ze3;->a()Lyads/h75;

    move-result-object p0

    .line 88
    iget-object v0, p1, Lyads/f66;->a:Lyads/e66;

    .line 89
    iget-object v0, v0, Lyads/e66;->b:Ljava/lang/String;

    .line 90
    const-string v1, "reason"

    invoke-virtual {p0, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p1, Lyads/f66;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    const-string v1, "asset_name"

    invoke-virtual {p0, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object p1, p1, Lyads/f66;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    const-string v0, "description"

    invoke-virtual {p0, p1, v0}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public final a(Lyads/e75;Lyads/h75;)V
    .locals 2

    .line 97
    new-instance v0, Lyads/g75;

    .line 98
    iget-object v1, p2, Lyads/h75;->a:Ljava/util/Map;

    .line 99
    iget-object p2, p2, Lyads/h75;->b:Lyads/c;

    .line 100
    invoke-direct {v0, p1, v1, p2}, Lyads/g75;-><init>(Lyads/e75;Ljava/util/Map;Lyads/c;)V

    .line 101
    iget-object p2, p0, Lyads/ze3;->d:Lyads/q84;

    invoke-virtual {p2, v0}, Lyads/q84;->a(Lyads/g75;)V

    .line 102
    iget-object p2, p0, Lyads/ze3;->g:Lyads/le;

    .line 103
    iget-object v0, v0, Lyads/g75;->b:Ljava/util/Map;

    .line 104
    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/ze3;->c:Lyads/j5;

    invoke-virtual {p2, p1, v0, v1, p0}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    return-void
.end method
