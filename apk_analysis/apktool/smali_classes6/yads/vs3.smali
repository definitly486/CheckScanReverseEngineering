.class public final Lyads/vs3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/zg5;

.field public final c:Lyads/ct3;

.field public final d:Lyads/os3;

.field public final e:Lyads/ts3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

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

    invoke-static {}, Lyads/ns3;->a()Lyads/os3;

    move-result-object v2

    new-instance v3, Lyads/ts3;

    const/4 v4, 0x0

    const/16 v5, 0x7e

    invoke-direct {v3, p1, v4, v5}, Lyads/ts3;-><init>(Landroid/content/Context;Lyads/q84;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vs3;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/vs3;->b:Lyads/zg5;

    iput-object v1, p0, Lyads/vs3;->c:Lyads/ct3;

    iput-object v2, p0, Lyads/vs3;->d:Lyads/os3;

    iput-object v3, p0, Lyads/vs3;->e:Lyads/ts3;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lyads/us3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/us3;

    iget v1, v0, Lyads/us3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/us3;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/us3;

    invoke-direct {v0, p0, p1}, Lyads/us3;-><init>(Lyads/vs3;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/us3;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/us3;->d:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/vs3;->d:Lyads/os3;

    iput v7, v0, Lyads/us3;->d:I

    iget-object p1, p1, Lyads/os3;->a:Lxp1;

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    sget-object p1, Lj59;->a:Lj59;

    goto :goto_1

    :cond_8
    sget-object p1, Lj59;->a:Lj59;

    :goto_1
    if-ne p1, v1, :cond_9

    goto/16 :goto_c

    :cond_9
    :goto_2
    iput v6, v0, Lyads/us3;->d:I

    iget-object p1, p0, Lyads/vs3;->b:Lyads/zg5;

    iget-object v2, p0, Lyads/vs3;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p1, Lyads/fe5;->y:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object p1, v8

    :goto_3
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lyads/vs3;->c:Lyads/ct3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    new-instance v6, Lyads/xs3;

    invoke-direct {v6, p1, v8}, Lyads/xs3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {v2, v6, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_c
    :goto_4
    move-object p1, v8

    :goto_5
    if-ne p1, v1, :cond_d

    goto :goto_c

    :cond_d
    :goto_6
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_e

    return-object p1

    :cond_e
    iget-object p1, p0, Lyads/vs3;->e:Lyads/ts3;

    iput v5, v0, Lyads/us3;->d:I

    invoke-virtual {p1, v0}, Lyads/ts3;->a(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    goto :goto_c

    :cond_f
    :goto_7
    iget-object p1, p0, Lyads/vs3;->d:Lyads/os3;

    iput v4, v0, Lyads/us3;->d:I

    iget-object p1, p1, Lyads/os3;->a:Lxp1;

    if-eqz p1, :cond_11

    invoke-interface {p1, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    goto :goto_8

    :cond_10
    sget-object p1, Lj59;->a:Lj59;

    goto :goto_8

    :cond_11
    sget-object p1, Lj59;->a:Lj59;

    :goto_8
    if-ne p1, v1, :cond_12

    goto :goto_c

    :cond_12
    :goto_9
    iput v3, v0, Lyads/us3;->d:I

    iget-object p1, p0, Lyads/vs3;->b:Lyads/zg5;

    iget-object v2, p0, Lyads/vs3;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p1, Lyads/fe5;->y:Ljava/lang/String;

    goto :goto_a

    :cond_13
    move-object p1, v8

    :goto_a
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_b

    :cond_14
    iget-object p0, p0, Lyads/vs3;->c:Lyads/ct3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Lsh2;->c:Lsh2;

    new-instance v2, Lyads/xs3;

    invoke-direct {v2, p0, v8}, Lyads/xs3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {p1, v2, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v8

    :cond_15
    :goto_b
    if-ne v8, v1, :cond_16

    :goto_c
    return-object v1

    :cond_16
    return-object v8
.end method
