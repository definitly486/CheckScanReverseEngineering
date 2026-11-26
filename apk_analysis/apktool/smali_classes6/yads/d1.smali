.class public final Lyads/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x0;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l00;Lyads/mk4;Lyads/lf4;Lyads/h16;Lyads/nk4;)V
    .locals 9

    new-instance v0, Lyads/x0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lyads/x0;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l00;Lyads/mk4;Lyads/lf4;Lyads/h16;Lyads/nk4;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/d1;->a:Lyads/x0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lyads/c1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/c1;

    iget v3, v2, Lyads/c1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/c1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/c1;

    invoke-direct {v2, v0, v1}, Lyads/c1;-><init>(Lyads/d1;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/c1;->e:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lyads/c1;->g:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Lyads/c1;->d:Ljava/util/Iterator;

    iget-object v8, v2, Lyads/c1;->c:Lr07;

    iget-object v9, v2, Lyads/c1;->b:Landroid/view/View;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    new-instance v4, Lyads/m83;

    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v7

    :goto_2
    invoke-direct {v4, v8}, Lyads/m83;-><init>(Z)V

    iput-object v4, v1, Lr07;->b:Ljava/lang/Object;

    if-eqz p2, :cond_14

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v1

    move-object/from16 v1, p1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/u0;

    iget-object v10, v0, Lyads/d1;->a:Lyads/x0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v10, Lyads/x0;->e:Lyads/mk4;

    new-instance v13, Lyads/lk4;

    iget-object v12, v12, Lyads/mk4;->a:Lyads/gv5;

    invoke-direct {v13, v12}, Lyads/lk4;-><init>(Lyads/gv5;)V

    invoke-interface {v9}, Lyads/u0;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x54c23d65

    if-eq v14, v15, :cond_a

    const v15, 0x5a5ddf8

    if-eq v14, v15, :cond_8

    const v15, 0x258156e6

    if-eq v14, v15, :cond_6

    const v15, 0x3defa775

    if-eq v14, v15, :cond_5

    goto :goto_4

    :cond_5
    const-string v14, "divkit_adtune"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_4

    :cond_6
    const-string v11, "deeplink"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_4

    :cond_7
    new-instance v12, Lyads/wi0;

    iget-object v13, v10, Lyads/x0;->a:Lyads/e4;

    iget-object v14, v10, Lyads/x0;->b:Lyads/bf5;

    iget-object v15, v10, Lyads/x0;->c:Lyads/d9;

    iget-object v11, v10, Lyads/x0;->d:Lyads/l00;

    iget-object v5, v10, Lyads/x0;->f:Lyads/lf4;

    iget-object v6, v10, Lyads/x0;->g:Lyads/h16;

    iget-object v10, v10, Lyads/x0;->h:Lyads/nk4;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v19}, Lyads/wi0;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l00;Lyads/lf4;Lyads/h16;Lyads/nk4;)V

    new-instance v5, Lyads/ri0;

    invoke-direct {v5, v12}, Lyads/ri0;-><init>(Lyads/wi0;)V

    goto :goto_5

    :cond_8
    const-string v5, "close"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance v5, Lyads/b10;

    iget-object v6, v10, Lyads/x0;->d:Lyads/l00;

    iget-object v10, v10, Lyads/x0;->f:Lyads/lf4;

    invoke-direct {v5, v6, v10}, Lyads/b10;-><init>(Lyads/l00;Lyads/lf4;)V

    goto :goto_5

    :cond_a
    const-string v5, "adtune"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    new-instance v5, Lyads/sc;

    iget-object v6, v10, Lyads/x0;->f:Lyads/lf4;

    invoke-direct {v5, v6, v13}, Lyads/sc;-><init>(Lyads/cp2;Lyads/tq4;)V

    new-instance v6, Lyads/rn1;

    invoke-direct {v6}, Lyads/rn1;-><init>()V

    new-instance v12, Lyads/ea;

    iget-object v13, v10, Lyads/x0;->a:Lyads/e4;

    iget-object v14, v10, Lyads/x0;->b:Lyads/bf5;

    invoke-direct {v12, v11, v13, v14}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    new-instance v11, Lyads/zb;

    iget-object v10, v10, Lyads/x0;->d:Lyads/l00;

    invoke-direct {v11, v5, v6, v12, v10}, Lyads/zb;-><init>(Lyads/sc;Lyads/rn1;Lyads/ea;Lyads/l00;)V

    move-object v5, v11

    :goto_5
    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_12

    iput-object v1, v2, Lyads/c1;->b:Landroid/view/View;

    iput-object v8, v2, Lyads/c1;->c:Lr07;

    iput-object v4, v2, Lyads/c1;->d:Ljava/util/Iterator;

    iput v7, v2, Lyads/c1;->g:I

    invoke-interface {v5, v1, v9, v2}, Lyads/w0;->a(Landroid/view/View;Lyads/u0;Lyads/c1;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_d

    return-object v3

    :cond_d
    move-object v9, v1

    move-object v1, v5

    :goto_7
    check-cast v1, Lyads/m83;

    if-eqz v1, :cond_11

    iget-object v5, v8, Lr07;->b:Ljava/lang/Object;

    check-cast v5, Lyads/m83;

    iget-boolean v6, v5, Lyads/m83;->a:Z

    if-nez v6, :cond_f

    iget-boolean v6, v1, Lyads/m83;->a:Z

    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    move v6, v7

    :goto_9
    iget-object v5, v5, Lyads/m83;->b:Lyads/n83;

    if-nez v5, :cond_10

    iget-object v5, v1, Lyads/m83;->b:Lyads/n83;

    :cond_10
    new-instance v1, Lyads/m83;

    invoke-direct {v1, v6, v5}, Lyads/m83;-><init>(ZLyads/n83;)V

    iput-object v1, v8, Lr07;->b:Ljava/lang/Object;

    :cond_11
    move-object v1, v9

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_13
    move-object v1, v8

    :cond_14
    iget-object v0, v1, Lr07;->b:Ljava/lang/Object;

    return-object v0
.end method
