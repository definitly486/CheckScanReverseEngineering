.class public final Lyads/ln2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/oa;

.field public final c:Lyads/fz4;

.field public final d:Lxb4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/dt;)V
    .locals 2

    new-instance v0, Lyads/oa;

    invoke-direct {v0, p3}, Lyads/oa;-><init>(Lyads/dt;)V

    new-instance p3, Lyads/l34;

    const/4 v1, 0x0

    invoke-direct {p3, p1, p2, v1}, Lyads/l34;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance v1, Lyads/n00;

    invoke-direct {v1, p1, p2}, Lyads/n00;-><init>(Lyads/e4;Lyads/bf5;)V

    new-instance p2, Lyads/fz4;

    invoke-direct {p2, p3, v1}, Lyads/fz4;-><init>(Lyads/l34;Lyads/n00;)V

    sget-object p3, Lyads/zq3;->a:Lxb4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ln2;->a:Lyads/e4;

    iput-object v0, p0, Lyads/ln2;->b:Lyads/oa;

    iput-object p2, p0, Lyads/ln2;->c:Lyads/fz4;

    iput-object p3, p0, Lyads/ln2;->d:Lxb4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lyads/kn2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/kn2;

    iget v3, v2, Lyads/kn2;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/kn2;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/kn2;

    invoke-direct {v2, v0, v1}, Lyads/kn2;-><init>(Lyads/ln2;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/kn2;->b:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lyads/kn2;->d:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lyads/ln2;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->c:Lyads/ma;

    iget-object v1, v1, Lyads/ma;->a:Ljava/lang/String;

    iget-object v4, v0, Lyads/ln2;->b:Lyads/oa;

    iget-object v4, v4, Lyads/oa;->a:Lyads/dt;

    iget-object v4, v4, Lyads/dt;->c:Lyads/o74;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v4, Lyads/o74;->c:Ljava/util/List;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lyads/h74;

    iget-object v9, v9, Lyads/h74;->b:Ljava/lang/String;

    invoke-static {v9, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_5
    move-object v8, v6

    :goto_1
    check-cast v8, Lyads/h74;

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    new-instance v7, Lyads/i74;

    iget-object v9, v8, Lyads/h74;->b:Ljava/lang/String;

    iget-object v8, v8, Lyads/h74;->c:Ljava/util/List;

    iget-wide v10, v4, Lyads/o74;->b:J

    invoke-direct {v7, v9, v8, v10, v11}, Lyads/i74;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    goto :goto_3

    :cond_7
    :goto_2
    move-object v7, v6

    :goto_3
    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    :goto_4
    return-object v6

    :cond_9
    iget-object v1, v0, Lyads/ln2;->a:Lyads/e4;

    iget-object v14, v1, Lyads/e4;->a:Lyads/n70;

    iget-object v1, v1, Lyads/e4;->d:Lyads/tl5;

    iget-object v1, v1, Lyads/tl5;->a:Lyads/sl5;

    iget-object v12, v7, Lyads/i74;->b:Ljava/util/List;

    iget-wide v9, v7, Lyads/i74;->c:J

    iget-object v15, v0, Lyads/ln2;->c:Lyads/fz4;

    iput v5, v2, Lyads/kn2;->d:I

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Luy4;->a:Lhu3;

    invoke-virtual {v4}, Lhu3;->k0()Lgu3;

    move-result-object v4

    new-instance v8, Lyads/bz4;

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lyads/bz4;-><init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V

    invoke-static {v4, v8, v2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    :cond_a
    :goto_5
    check-cast v1, Lyads/ly4;

    iget-object v0, v0, Lyads/ln2;->d:Lxb4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/ly4;->Companion:Lyads/ky4;

    invoke-virtual {v2}, Lyads/ky4;->serializer()Ldf4;

    move-result-object v2

    check-cast v2, Lxp7;

    invoke-virtual {v0, v2, v1}, Lxb4;->b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
