.class public final Lyads/co5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fe5;

.field public final b:Lll3;

.field public c:Z

.field public final d:Lyg5;


# direct methods
.method public constructor <init>(Lyads/fe5;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/co5;->a:Lyads/fe5;

    iput-object p2, p0, Lyads/co5;->b:Lll3;

    new-instance p1, Lch5;

    invoke-direct {p1}, Lch5;-><init>()V

    iput-object p1, p0, Lyads/co5;->d:Lyg5;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lyads/bo5;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/bo5;

    iget v3, v2, Lyads/bo5;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/bo5;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/bo5;

    invoke-direct {v2, v0, v1}, Lyads/bo5;-><init>(Lyads/co5;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/bo5;->c:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lyads/bo5;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lyads/bo5;->b:Lyg5;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lyads/co5;->c:Z

    if-eqz v1, :cond_3

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_3
    iget-object v1, v0, Lyads/co5;->d:Lyg5;

    iput-object v1, v2, Lyads/bo5;->b:Lyg5;

    iput v5, v2, Lyads/bo5;->e:I

    invoke-interface {v1, v6, v2}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_4

    return-object v3

    :cond_4
    move-object v2, v1

    :goto_1
    :try_start_0
    iget-boolean v1, v0, Lyads/co5;->c:Z

    if-eqz v1, :cond_5

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_5
    :try_start_1
    iput-boolean v5, v0, Lyads/co5;->c:Z

    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    iget-object v2, v0, Lyads/co5;->a:Lyads/fe5;

    iget-object v2, v2, Lyads/fe5;->Q0:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v6

    :goto_2
    if-nez v2, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v0, v0, Lyads/co5;->b:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lyads/n13;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/qz4;

    sget-object v2, Lyads/g13;->c:Lyads/f13;

    iget-object v3, v1, Lyads/qz4;->b:Lyads/sz4;

    iget-object v3, v3, Lyads/sz4;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/g13;->h:Lg03;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lyads/g13;

    iget-object v5, v5, Lyads/g13;->b:Ljava/lang/String;

    invoke-static {v5, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_9
    move-object v4, v6

    :goto_4
    move-object v10, v4

    check-cast v10, Lyads/g13;

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    :try_start_2
    iget-object v12, v1, Lyads/qz4;->a:Ljava/lang/String;

    new-instance v9, Lyads/n8;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v24}, Lyads/n8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/location/Location;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lyads/i85;ZLjava/lang/String;Lyads/o70;)V

    iget-object v1, v8, Lyads/n13;->b:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lyads/ar;

    if-nez v11, :cond_b

    goto :goto_3

    :cond_b
    iget-object v1, v8, Lyads/n13;->a:Ly22;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Luy4;->a:Lhu3;

    new-instance v7, Lyads/m13;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lyads/m13;-><init>(Lyads/n13;Lyads/n8;Lyads/g13;Lyads/ar;Le02;)V

    const/4 v3, 0x2

    invoke-static {v1, v2, v6, v7, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_c
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_d
    :goto_5
    return-object v1

    :goto_6
    invoke-interface {v2, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
