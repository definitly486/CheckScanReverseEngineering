.class public final Lyads/b65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/a85;

.field public final c:Lyads/vh0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/a85;Lyads/vh0;Lyads/dh3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b65;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/b65;->b:Lyads/a85;

    iput-object p3, p0, Lyads/b65;->c:Lyads/vh0;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lyads/y55;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/y55;

    iget v1, v0, Lyads/y55;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/y55;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/y55;

    invoke-direct {v0, p0, p1}, Lyads/y55;-><init>(Lyads/b65;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/y55;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/y55;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lyads/y55;->d:I

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance v0, Lyads/z55;

    invoke-direct {v0, p1}, Lyads/z55;-><init>(Lc31;)V

    new-instance v2, Lyads/a65;

    invoke-direct {v2, p1}, Lyads/a65;-><init>(Lc31;)V

    new-instance v8, Lyads/ch3;

    invoke-direct {v8, v0, v2}, Lyads/ch3;-><init>(Lyads/z55;Lyads/a65;)V

    new-instance v3, Lyads/bn3;

    iget-object v4, p0, Lyads/b65;->a:Landroid/content/Context;

    iget-object v0, p0, Lyads/b65;->c:Lyads/vh0;

    invoke-virtual {v0}, Lyads/vh0;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lyads/b65;->b:Lyads/a85;

    iget-object v0, p0, Lyads/b65;->c:Lyads/vh0;

    iget-object v0, v0, Lyads/vh0;->a:Lyads/vn2;

    iget-object v7, v0, Lyads/vn2;->c:Ljava/util/Map;

    invoke-direct/range {v3 .. v8}, Lyads/bn3;-><init>(Landroid/content/Context;Ljava/lang/String;Lyads/a85;Ljava/util/Map;Lyads/ch3;)V

    invoke-static {}, Lyads/y75;->a()Lyads/z75;

    move-result-object v2

    iget-object p0, p0, Lyads/b65;->a:Landroid/content/Context;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object p0

    invoke-virtual {p0, v3}, Lyads/e85;->a(Lyads/r75;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lk57;

    iget-object p0, p1, Lk57;->b:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2

    throw p0
.end method
