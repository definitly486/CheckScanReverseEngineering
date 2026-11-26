.class public final Lyads/ts3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/zg5;

.field public final c:Lyads/ct3;

.field public final d:Lll3;

.field public final e:Ly22;

.field public final f:Lyads/os3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;I)V
    .locals 4

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
    new-instance v1, Lyads/ct3;

    invoke-direct {v1, p1}, Lyads/ct3;-><init>(Landroid/content/Context;)V

    new-instance v2, Ld84;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Ld84;-><init>(Ljava/lang/Object;I)V

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p3, Lyads/j90;

    invoke-direct {p3, p2}, Lyads/j90;-><init>(Lyads/k75;)V

    goto :goto_3

    :cond_3
    new-instance p3, Lyads/i90;

    invoke-direct {p3}, Lyads/i90;-><init>()V

    :goto_3
    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    invoke-static {p2, v3}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p2

    invoke-interface {p2, p3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p2

    invoke-static {p2}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p2

    invoke-static {}, Lyads/ns3;->a()Lyads/os3;

    move-result-object p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ts3;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/ts3;->b:Lyads/zg5;

    iput-object v1, p0, Lyads/ts3;->c:Lyads/ct3;

    iput-object v2, p0, Lyads/ts3;->d:Lll3;

    iput-object p2, p0, Lyads/ts3;->e:Ly22;

    iput-object p3, p0, Lyads/ts3;->f:Lyads/os3;

    return-void
.end method

.method public static final a(Lyads/ts3;Ljava/lang/String;)Lj59;
    .locals 0

    .line 267
    iget-object p0, p0, Lyads/ts3;->f:Lyads/os3;

    .line 268
    iget-object p0, p0, Lyads/os3;->a:Lxp1;

    if-eqz p0, :cond_0

    .line 269
    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;)Lyads/e85;
    .locals 0

    .line 266
    invoke-static {p0}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lnl3;Lyads/hi6;)V
    .locals 0

    const/4 p0, 0x0

    .line 276
    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lyads/ts3;Ljava/lang/String;Lnl3;Ljava/lang/String;)V
    .locals 7

    .line 277
    iget-object v0, p0, Lyads/ts3;->e:Ly22;

    .line 278
    new-instance v1, Lyads/ss3;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lyads/ss3;-><init>(Lyads/ts3;Ljava/lang/String;Ljava/lang/String;Lnl3;Le02;)V

    const/4 p0, 0x0

    const/4 p1, 0x3

    .line 279
    invoke-static {v0, p0, p0, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lyads/rs3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/rs3;

    iget v1, v0, Lyads/rs3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/rs3;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/rs3;

    invoke-direct {v0, p0, p1}, Lyads/rs3;-><init>(Lyads/ts3;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/rs3;->d:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/rs3;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object v2, v0, Lyads/rs3;->c:Ljava/lang/String;

    iget-object v4, v0, Lyads/rs3;->b:Lyads/fe5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lyads/rs3;->c:Ljava/lang/String;

    iget-object v7, v0, Lyads/rs3;->b:Lyads/fe5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ts3;->b:Lyads/zg5;

    iget-object v2, p0, Lyads/ts3;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    iget-object v2, p1, Lyads/fe5;->y:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v7, p0, Lyads/ts3;->c:Lyads/ct3;

    iput-object p1, v0, Lyads/rs3;->b:Lyads/fe5;

    iput-object v2, v0, Lyads/rs3;->c:Ljava/lang/String;

    iput v5, v0, Lyads/rs3;->f:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lqo2;->a:Loi2;

    sget-object v8, Lsh2;->c:Lsh2;

    new-instance v9, Lyads/ys3;

    invoke-direct {v9, v7, v6}, Lyads/ys3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {v8, v9, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v10, v7

    move-object v7, p1

    move-object p1, v10

    :goto_1
    invoke-static {p1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lyads/ts3;->c:Lyads/ct3;

    iput-object v7, v0, Lyads/rs3;->b:Lyads/fe5;

    iput-object v2, v0, Lyads/rs3;->c:Ljava/lang/String;

    iput v4, v0, Lyads/rs3;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Lsh2;->c:Lsh2;

    new-instance v8, Lyads/xs3;

    invoke-direct {v8, p1, v6}, Lyads/xs3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {v4, v8, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v4, v7

    :goto_2
    if-eqz p1, :cond_9

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_9
    move-object v7, v4

    :cond_a
    iget-object p1, p0, Lyads/ts3;->f:Lyads/os3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyp1;

    invoke-direct {v4}, Lyp1;-><init>()V

    iput-object v4, p1, Lyads/os3;->a:Lxp1;

    iget-boolean p1, v7, Lyads/fe5;->z:Z

    if-eqz p1, :cond_d

    :try_start_1
    iput-object v6, v0, Lyads/rs3;->b:Lyads/fe5;

    iput-object v6, v0, Lyads/rs3;->c:Ljava/lang/String;

    iput v3, v0, Lyads/rs3;->f:I

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance v0, Lyads/ps3;

    invoke-direct {v0, p1}, Lyads/ps3;-><init>(Lc31;)V

    invoke-virtual {p0, v2, v0}, Lyads/ts3;->a(Ljava/lang/String;Lnl3;)V

    new-instance v0, Lyads/qs3;

    invoke-direct {v0, p0}, Lyads/qs3;-><init>(Lyads/ts3;)V

    invoke-virtual {p1, v0}, Lc31;->n(Lnl3;)V

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_b

    :goto_3
    return-object v1

    :cond_b
    :goto_4
    iget-object p0, p0, Lyads/ts3;->f:Lyads/os3;

    iget-object p0, p0, Lyads/os3;->a:Lxp1;

    if-eqz p0, :cond_e

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    goto :goto_6

    :goto_5
    iget-object p0, p0, Lyads/ts3;->f:Lyads/os3;

    iget-object p0, p0, Lyads/os3;->a:Lxp1;

    if-eqz p0, :cond_c

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_c
    throw p1

    :cond_d
    new-instance p1, Lnu1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lnu1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, p1}, Lyads/ts3;->a(Ljava/lang/String;Lnl3;)V

    :cond_e
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_f
    :goto_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lnl3;)V
    .locals 3

    .line 271
    new-instance v0, Lyads/vs5;

    new-instance v1, Ljr9;

    invoke-direct {v1, p0, p1, p2}, Ljr9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ld34;

    invoke-direct {v2, p1, p2}, Ld34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1, v2}, Lyads/vs5;-><init>(Ljava/lang/String;Lyads/y85;Lyads/x85;)V

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, v0, Lyads/r75;->j:Z

    .line 273
    const-string p1, "light_bundle_js_request_tag"

    .line 274
    iput-object p1, v0, Lyads/r75;->q:Ljava/lang/Object;

    .line 275
    iget-object p0, p0, Lyads/ts3;->d:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e85;

    invoke-virtual {p0, v0}, Lyads/e85;->a(Lyads/r75;)V

    return-void
.end method
