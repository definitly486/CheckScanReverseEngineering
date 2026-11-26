.class public final Lyads/om4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/fk6;

.field public final c:Lyads/e14;

.field public final d:Lyads/ec4;


# direct methods
.method public constructor <init>(Lyads/t5;)V
    .locals 3

    new-instance v0, Lyads/fk6;

    invoke-direct {v0}, Lyads/fk6;-><init>()V

    new-instance v1, Lyads/e14;

    invoke-direct {v1}, Lyads/e14;-><init>()V

    new-instance v2, Lyads/ec4;

    invoke-direct {v2}, Lyads/ec4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/om4;->a:Lyads/t5;

    iput-object v0, p0, Lyads/om4;->b:Lyads/fk6;

    iput-object v1, p0, Lyads/om4;->c:Lyads/e14;

    iput-object v2, p0, Lyads/om4;->d:Lyads/ec4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lyads/nm4;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lyads/nm4;

    iget v5, v4, Lyads/nm4;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lyads/nm4;->i:I

    goto :goto_0

    :cond_0
    new-instance v4, Lyads/nm4;

    invoke-direct {v4, v0, v3}, Lyads/nm4;-><init>(Lyads/om4;Lf02;)V

    :goto_0
    iget-object v3, v4, Lyads/nm4;->g:Ljava/lang/Object;

    sget-object v5, La32;->COROUTINE_SUSPENDED:La32;

    iget v6, v4, Lyads/nm4;->i:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v1, v4, Lyads/nm4;->f:Ljava/util/Iterator;

    iget-object v2, v4, Lyads/nm4;->e:Lyads/s5;

    iget-object v6, v4, Lyads/nm4;->d:Ljava/lang/Object;

    check-cast v6, Lyads/t5;

    iget-object v7, v4, Lyads/nm4;->c:Lyads/ee4;

    iget-object v9, v4, Lyads/nm4;->b:Landroid/content/Context;

    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v9

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object v1, v4, Lyads/nm4;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lyads/nm4;->c:Lyads/ee4;

    iget-object v6, v4, Lyads/nm4;->b:Landroid/content/Context;

    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_3
    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/om4;->c:Lyads/e14;

    invoke-virtual {v3, v2}, Lyads/e14;->a(Lyads/ee4;)Ljava/util/Set;

    move-result-object v3

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v6

    invoke-virtual {v6, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    iget v6, v6, Lyads/fe5;->b:I

    goto :goto_1

    :cond_4
    move v6, v10

    :goto_1
    invoke-static {v1}, Lyads/ya;->a(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v6

    invoke-virtual {v6, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v11, v6, Lyads/fe5;->J0:Z

    if-ne v11, v9, :cond_a

    iget-object v11, v0, Lyads/om4;->b:Lyads/fk6;

    iput-object v1, v4, Lyads/nm4;->b:Landroid/content/Context;

    iput-object v2, v4, Lyads/nm4;->c:Lyads/ee4;

    iput-object v3, v4, Lyads/nm4;->d:Ljava/lang/Object;

    iput v9, v4, Lyads/nm4;->i:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v6, Lyads/fe5;->J0:Z

    if-eqz v6, :cond_9

    sget-object v6, Lyads/fk6;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lqo2;->a:Loi2;

    new-instance v9, Lyads/ek6;

    invoke-direct {v9, v1, v7}, Lyads/ek6;-><init>(Landroid/content/Context;Le02;)V

    invoke-static {v6, v9, v4}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_6

    goto :goto_2

    :cond_6
    sget-object v6, Lj59;->a:Lj59;

    goto :goto_2

    :cond_7
    sget-object v6, Lj59;->a:Lj59;

    :goto_2
    if-ne v6, v5, :cond_8

    goto :goto_3

    :cond_8
    sget-object v6, Lj59;->a:Lj59;

    goto :goto_3

    :cond_9
    sget-object v6, Lj59;->a:Lj59;

    :goto_3
    if-ne v6, v5, :cond_a

    goto :goto_7

    :cond_a
    :goto_4
    iget-object v6, v0, Lyads/om4;->a:Lyads/t5;

    sget-object v9, Lyads/s5;->s:Lyads/s5;

    invoke-virtual {v6, v9, v7}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v10, v1

    move-object v7, v2

    move-object v1, v3

    move-object v2, v9

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lyads/by3;

    iget-object v13, v0, Lyads/om4;->d:Lyads/ec4;

    iget-object v14, v7, Lyads/ee4;->b:Lyads/d9;

    iput-object v10, v4, Lyads/nm4;->b:Landroid/content/Context;

    iput-object v7, v4, Lyads/nm4;->c:Lyads/ee4;

    iput-object v6, v4, Lyads/nm4;->d:Ljava/lang/Object;

    iput-object v2, v4, Lyads/nm4;->e:Lyads/s5;

    iput-object v1, v4, Lyads/nm4;->f:Ljava/util/Iterator;

    iput v8, v4, Lyads/nm4;->i:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Lyads/by3;->a:Lyads/tz3;

    iget-boolean v15, v14, Lyads/d9;->D:Z

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Luy4;->a:Lhu3;

    invoke-virtual {v3}, Lhu3;->k0()Lgu3;

    move-result-object v3

    new-instance v9, Lyads/dc4;

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lyads/dc4;-><init>(Landroid/content/Context;Lyads/by3;Lyads/tz3;Lyads/ec4;Lyads/d9;ZLe02;)V

    invoke-static {v3, v9, v4}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v9, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v9, :cond_c

    goto :goto_6

    :cond_c
    sget-object v3, Lj59;->a:Lj59;

    :goto_6
    if-ne v3, v5, :cond_b

    :goto_7
    return-object v5

    :cond_d
    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {v6, v2}, Lyads/t5;->a(Lyads/s5;)V

    return-object v0

    :cond_e
    :goto_8
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
