.class public final enum Lcy3$w;
.super Lcy3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# static fields
.field private static final MaxStackScan:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InBody"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcy3$q;->a:[I

    iget-object v4, v1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "h5"

    const-string v5, "h4"

    const-string v7, "h3"

    const-string v9, "h2"

    const-string v11, "h1"

    const-string v13, "dt"

    const-string v14, "dd"

    const-string v15, "p"

    const-string v6, "li"

    const-string v12, "br"

    sget-object v10, Lcy3$z;->i:[Ljava/lang/String;

    const-string v8, "template"

    move/from16 v20, v3

    sget-object v3, Lcy3$z;->l:[Ljava/lang/String;

    move-object/from16 v21, v10

    const-string v10, "body"

    move-object/from16 v22, v3

    sget-object v3, Lcy3$z;->p:[Ljava/lang/String;

    move-object/from16 v24, v8

    const/16 v25, 0x1

    const/4 v8, 0x0

    packed-switch v20, :pswitch_data_0

    const-string v0, "Unexpected state: "

    iget-object v1, v1, Lgx8;->a:Lgx8$i;

    invoke-static {v1, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return v8

    :pswitch_0
    iget-object v4, v2, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v0, Lcy3;->InTemplate:Lcy3;

    invoke-virtual {v0, v1, v2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v2, v3}, Lby3;->J([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v25

    :pswitch_1
    move-object v0, v1

    check-cast v0, Lgx8$b;

    iget-boolean v1, v2, Lby3;->u:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcy3;->d(Lgx8;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v0, v8}, Lby3;->z(Lgx8$b;Z)V

    return v25

    :cond_1
    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v0, v8}, Lby3;->z(Lgx8$b;Z)V

    iput-boolean v8, v2, Lby3;->u:Z

    return v25

    :pswitch_2
    move/from16 v20, v8

    move-object v8, v1

    check-cast v8, Lgx8$f;

    invoke-virtual {v8}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :goto_0
    move-object/from16 v4, v24

    :goto_1
    const/4 v6, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "sarcasm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v6, 0x10

    goto :goto_2

    :sswitch_1
    const-string v4, "span"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v6, 0xf

    goto :goto_2

    :sswitch_2
    const-string v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0xe

    goto :goto_2

    :sswitch_3
    const-string v4, "form"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v6, 0xd

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v6, 0xc

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v6, 0xb

    goto :goto_2

    :sswitch_6
    const-string v4, "h6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 v6, 0xa

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v6, 0x9

    :goto_2
    move-object/from16 v4, v24

    goto/16 :goto_3

    :sswitch_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move-object/from16 v4, v24

    const/16 v6, 0x8

    goto/16 :goto_3

    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move-object/from16 v4, v24

    const/4 v6, 0x7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    move-object/from16 v4, v24

    const/4 v6, 0x6

    goto :goto_3

    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    move-object/from16 v4, v24

    const/4 v6, 0x5

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    move-object/from16 v4, v24

    const/4 v6, 0x4

    goto :goto_3

    :sswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    move-object/from16 v4, v24

    const/4 v6, 0x3

    goto :goto_3

    :sswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    move-object/from16 v4, v24

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    move-object/from16 v4, v24

    move/from16 v6, v25

    goto :goto_3

    :sswitch_10
    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_1

    :cond_12
    move/from16 v6, v20

    :goto_3
    sget-object v5, Lby3;->x:[Ljava/lang/String;

    const-string v7, "http://www.w3.org/1999/xhtml"

    packed-switch v6, :pswitch_data_1

    sget-object v3, Lcy3$z;->q:[Ljava/lang/String;

    invoke-static {v1, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, v8, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v4, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Lh39;->d()Lorg/jsoup/nodes/h;

    return v25

    :cond_13
    move/from16 v1, v20

    :goto_4
    const/16 v8, 0x8

    if-lt v1, v8, :cond_14

    :goto_5
    move/from16 v8, v25

    goto/16 :goto_b

    :cond_14
    add-int/lit8 v1, v1, 0x1

    iget-object v4, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_6
    if-ltz v4, :cond_17

    iget-object v5, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/h;

    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    iget-object v6, v5, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v6, v6, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_17
    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_18

    invoke-virtual/range {p0 .. p2}, Lcy3$w;->g(Lgx8;Lby3;)Z

    move-result v8

    goto :goto_b

    :cond_18
    iget-object v4, v5, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v6, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v5}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    goto :goto_5

    :cond_19
    iget-object v6, v4, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lby3;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    move/from16 v8, v20

    goto :goto_b

    :cond_1a
    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v6

    if-eq v6, v5, :cond_1b

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_1b
    iget-object v6, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_1d

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_1d

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/h;

    invoke-static {v11}, Lby3;->G(Lorg/jsoup/nodes/h;)Z

    move-result v12

    if-eqz v12, :cond_1c

    goto :goto_9

    :cond_1d
    const/4 v11, 0x0

    :goto_9
    if-nez v11, :cond_1f

    :goto_a
    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    if-eq v0, v5, :cond_1e

    invoke-virtual {v2}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto :goto_a

    :cond_1e
    invoke-virtual {v2}, Lh39;->d()Lorg/jsoup/nodes/h;

    invoke-virtual {v2, v5}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    goto/16 :goto_5

    :cond_1f
    invoke-virtual {v2, v5}, Lby3;->i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v6

    if-nez v6, :cond_20

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    goto/16 :goto_5

    :goto_b
    return v8

    :cond_20
    move/from16 v9, v20

    :goto_c
    iget-object v12, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_22

    iget-object v12, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v5, v12, :cond_21

    goto :goto_d

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_22
    const/4 v9, -0x1

    :goto_d
    move-object v13, v11

    move-object v14, v13

    move/from16 v12, v20

    :goto_e
    add-int/lit8 v12, v12, 0x1

    iget-object v15, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v15, v13}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v15

    if-nez v15, :cond_23

    iget-object v13, v13, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_f

    :cond_23
    invoke-virtual {v2, v13}, Lby3;->i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v13

    :goto_f
    if-eqz v13, :cond_24

    invoke-virtual {v13, v10}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25

    :cond_24
    move/from16 v16, v1

    move-object/from16 v17, v3

    goto/16 :goto_16

    :cond_25
    if-ne v13, v5, :cond_26

    :goto_10
    move/from16 v16, v1

    move-object/from16 v17, v3

    goto/16 :goto_17

    :cond_26
    const/4 v15, 0x3

    if-le v12, v15, :cond_27

    iget-object v8, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-static {v8, v13}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v2, v13}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    goto :goto_10

    :cond_27
    iget-object v8, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-static {v8, v13}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v8

    if-nez v8, :cond_28

    invoke-virtual {v2, v13}, Lby3;->P(Lorg/jsoup/nodes/h;)V

    const/16 v8, 0x8

    goto :goto_e

    :cond_28
    iget-object v8, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v8, v13}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v8

    if-nez v8, :cond_29

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v13}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    goto :goto_10

    :cond_29
    new-instance v8, Lorg/jsoup/nodes/h;

    invoke-virtual {v13}, Lorg/jsoup/nodes/h;->v()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v1

    iget-object v1, v13, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->d:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v2, Lh39;->i:Lbk8;

    move/from16 v18, v12

    move/from16 v12, v25

    invoke-virtual {v3, v15, v1, v7, v12}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object v1

    iget-object v3, v2, Lh39;->f:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v1, v3, v12}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    iget-object v1, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2a

    const/4 v15, 0x1

    goto :goto_11

    :cond_2a
    move/from16 v15, v20

    :goto_11
    invoke-static {v15}, Lyb9;->b(Z)V

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v12, :cond_2b

    const/4 v12, 0x1

    goto :goto_12

    :cond_2b
    move/from16 v12, v20

    :goto_12
    invoke-static {v12}, Lyb9;->b(Z)V

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v14, v11, :cond_2e

    move/from16 v1, v20

    :goto_13
    iget-object v3, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    iget-object v3, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v8, v3, :cond_2c

    :goto_14
    const/16 v25, 0x1

    goto :goto_15

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2d
    const/4 v1, -0x1

    goto :goto_14

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    :cond_2e
    invoke-virtual {v8, v14}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    move-object v13, v8

    move-object v14, v13

    move/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v12, v18

    const/16 v8, 0x8

    const/16 v25, 0x1

    goto/16 :goto_e

    :goto_16
    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :goto_17
    invoke-virtual {v6, v14}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    new-instance v1, Lorg/jsoup/nodes/h;

    iget-object v3, v2, Lh39;->f:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v4, v3, v12}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-virtual {v5}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->size()I

    move-result v6

    if-nez v6, :cond_2f

    goto :goto_1a

    :cond_2f
    iget v8, v3, Lorg/jsoup/nodes/b;->b:I

    add-int/2addr v8, v6

    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/b;->c(I)V

    iget v6, v3, Lorg/jsoup/nodes/b;->b:I

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    goto :goto_18

    :cond_30
    move/from16 v6, v20

    :goto_18
    new-instance v8, Lorg/jsoup/nodes/b$a;

    invoke-direct {v8, v4}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;)V

    :goto_19
    invoke-virtual {v8}, Lorg/jsoup/nodes/b$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v8}, Lorg/jsoup/nodes/b$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/a;

    iget-object v12, v4, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    if-eqz v6, :cond_31

    iget-object v13, v4, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    invoke-static {v13}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v4, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    goto :goto_19

    :cond_31
    iget-object v4, v4, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    invoke-static {v4}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_19

    :cond_32
    :goto_1a
    iget-object v3, v11, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-nez v3, :cond_33

    sget-object v3, Lorg/jsoup/nodes/n;->d:Ljava/util/List;

    goto :goto_1b

    :cond_33
    invoke-virtual {v11}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/n;

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    goto :goto_1c

    :cond_34
    invoke-virtual {v11, v1}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    invoke-virtual {v2, v5}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    invoke-virtual {v2, v1}, Lby3;->j(Lorg/jsoup/nodes/h;)V

    :try_start_0
    iget-object v3, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1d

    :catch_0
    iget-object v3, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    invoke-virtual {v2, v5}, Lby3;->P(Lorg/jsoup/nodes/h;)V

    iget-object v3, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_35

    const-string v3, "Did not find element on stack to insert after"

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12}, Lh39;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_35
    iget-object v4, v2, Lh39;->e:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1e
    move/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v25, 0x1

    goto/16 :goto_4

    :cond_36
    sget-object v3, Lcy3$z;->o:[Ljava/lang/String;

    invoke-static {v1, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v20

    :cond_37
    move/from16 v3, v20

    invoke-virtual {v2, v3}, Lby3;->s(Z)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_38
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :cond_39
    move-object/from16 v3, v22

    invoke-static {v1, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    const/4 v3, 0x0

    return v3

    :cond_3a
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lby3;->s(Z)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_3b
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {v2}, Lby3;->k()V

    const/16 v25, 0x1

    return v25

    :cond_3c
    :goto_1f
    const/16 v25, 0x1

    goto/16 :goto_2d

    :cond_3d
    invoke-virtual/range {p0 .. p2}, Lcy3$w;->g(Lgx8;Lby3;)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lcy3$w;->g(Lgx8;Lby3;)Z

    move-result v0

    return v0

    :pswitch_4
    invoke-virtual {v2, v10}, Lby3;->H(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    const/16 v20, 0x0

    return v20

    :cond_3e
    invoke-virtual {v2, v3}, Lby3;->J([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_3f
    sget-object v0, Lcy3;->AfterBody:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Lby3;->e(Lgx8;)Z

    move-result v0

    return v0

    :pswitch_5
    invoke-virtual {v2, v4}, Lby3;->H(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, v2, Lby3;->p:Lorg/jsoup/nodes/l;

    const/4 v12, 0x0

    iput-object v12, v2, Lby3;->p:Lorg/jsoup/nodes/l;

    if-eqz v3, :cond_40

    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    :cond_40
    const/4 v4, 0x0

    goto :goto_20

    :cond_41
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lby3;->s(Z)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_42
    invoke-virtual {v2, v3}, Lby3;->P(Lorg/jsoup/nodes/h;)V

    const/16 v25, 0x1

    return v25

    :goto_20
    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v4

    :cond_43
    const/4 v4, 0x0

    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v4

    :cond_44
    invoke-virtual {v2, v4}, Lby3;->s(Z)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_45
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_6
    move/from16 v4, v20

    invoke-virtual {v2, v10}, Lby3;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v4

    :cond_46
    invoke-virtual {v2, v3}, Lby3;->J([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_47
    invoke-virtual {v2, v10}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    sget-object v0, Lcy3;->AfterBody:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    const/16 v25, 0x1

    return v25

    :pswitch_7
    move/from16 v4, v20

    iget-object v3, v2, Lby3;->w:[Ljava/lang/String;

    aput-object v1, v3, v4

    sget-object v6, Lby3;->A:[Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lby3;->x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v4

    :cond_48
    invoke-virtual {v2, v1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_49
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_8
    move-object/from16 v3, v21

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v5, v12}, Lby3;->x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    const/16 v20, 0x0

    return v20

    :cond_4a
    invoke-virtual {v2, v1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_4b
    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v25, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_21
    if-ltz v0, :cond_3c

    invoke-virtual {v2}, Lh39;->d()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v4, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v4, v4, Ljj8;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto/16 :goto_1f

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :pswitch_9
    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    const/16 v20, 0x0

    return v20

    :cond_4d
    invoke-virtual {v2, v1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_4e
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_a
    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v12}, Lh39;->g(Ljava/lang/String;)V

    return v20

    :pswitch_b
    invoke-virtual {v2, v1}, Lby3;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v1}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lby3;->e(Lgx8;)Z

    move-result v0

    return v0

    :cond_4f
    invoke-virtual {v2, v1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_50
    invoke-virtual {v2, v1}, Lby3;->K(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_c
    move-object/from16 v1, p1

    sget-object v0, Lcy3;->InHead:Lcy3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v25

    :pswitch_d
    move-object/from16 v3, v22

    const/16 v19, 0x3

    move-object v8, v1

    check-cast v8, Lgx8$g;

    invoke-virtual {v8}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_1

    :goto_22
    const/16 v23, -0x1

    goto/16 :goto_24

    :sswitch_11
    const-string v4, "noembed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_22

    :cond_51
    const/16 v4, 0x36

    goto/16 :goto_23

    :sswitch_12
    const-string v4, "plaintext"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_22

    :cond_52
    const/16 v4, 0x35

    goto/16 :goto_23

    :sswitch_13
    const-string v4, "listing"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_22

    :cond_53
    const/16 v4, 0x34

    goto/16 :goto_23

    :sswitch_14
    const-string v4, "table"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_22

    :cond_54
    const/16 v4, 0x33

    goto/16 :goto_23

    :sswitch_15
    const-string v4, "small"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_22

    :cond_55
    const/16 v4, 0x32

    goto/16 :goto_23

    :sswitch_16
    const-string v4, "input"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto :goto_22

    :cond_56
    const/16 v4, 0x31

    goto/16 :goto_23

    :sswitch_17
    const-string v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_22

    :cond_57
    const/16 v4, 0x30

    goto/16 :goto_23

    :sswitch_18
    const-string v4, "embed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_22

    :cond_58
    const/16 v4, 0x2f

    goto/16 :goto_23

    :sswitch_19
    const-string v4, "span"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_22

    :cond_59
    const/16 v4, 0x2e

    goto/16 :goto_23

    :sswitch_1a
    const-string v4, "nobr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto/16 :goto_22

    :cond_5a
    const/16 v4, 0x2d

    goto/16 :goto_23

    :sswitch_1b
    const-string v4, "math"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto/16 :goto_22

    :cond_5b
    const/16 v4, 0x2c

    goto/16 :goto_23

    :sswitch_1c
    const-string v4, "html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_22

    :cond_5c
    const/16 v4, 0x2b

    goto/16 :goto_23

    :sswitch_1d
    const-string v4, "form"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto/16 :goto_22

    :cond_5d
    const/16 v4, 0x2a

    goto/16 :goto_23

    :sswitch_1e
    const-string v4, "font"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto/16 :goto_22

    :cond_5e
    const/16 v4, 0x29

    goto/16 :goto_23

    :sswitch_1f
    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_22

    :cond_5f
    const/16 v4, 0x28

    goto/16 :goto_23

    :sswitch_20
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto/16 :goto_22

    :cond_60
    const/16 v4, 0x27

    goto/16 :goto_23

    :sswitch_21
    const-string v4, "area"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto/16 :goto_22

    :cond_61
    const/16 v4, 0x26

    goto/16 :goto_23

    :sswitch_22
    const-string v4, "xmp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto/16 :goto_22

    :cond_62
    const/16 v4, 0x25

    goto/16 :goto_23

    :sswitch_23
    const-string v4, "wbr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto/16 :goto_22

    :cond_63
    const/16 v4, 0x24

    goto/16 :goto_23

    :sswitch_24
    const-string v4, "svg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto/16 :goto_22

    :cond_64
    const/16 v4, 0x23

    goto/16 :goto_23

    :sswitch_25
    const-string v4, "rtc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto/16 :goto_22

    :cond_65
    const/16 v4, 0x22

    goto/16 :goto_23

    :sswitch_26
    const-string v4, "pre"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto/16 :goto_22

    :cond_66
    const/16 v4, 0x21

    goto/16 :goto_23

    :sswitch_27
    const-string v4, "img"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto/16 :goto_22

    :cond_67
    const/16 v4, 0x20

    goto/16 :goto_23

    :sswitch_28
    const-string v4, "big"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    goto/16 :goto_22

    :cond_68
    const/16 v4, 0x1f

    goto/16 :goto_23

    :sswitch_29
    const-string v4, "tt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    goto/16 :goto_22

    :cond_69
    const/16 v4, 0x1e

    goto/16 :goto_23

    :sswitch_2a
    const-string v4, "rt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_22

    :cond_6a
    const/16 v4, 0x1d

    goto/16 :goto_23

    :sswitch_2b
    const-string v4, "rp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    goto/16 :goto_22

    :cond_6b
    const/16 v4, 0x1c

    goto/16 :goto_23

    :sswitch_2c
    const-string v4, "rb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto/16 :goto_22

    :cond_6c
    const/16 v4, 0x1b

    goto/16 :goto_23

    :sswitch_2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto/16 :goto_22

    :cond_6d
    const/16 v4, 0x1a

    goto/16 :goto_23

    :sswitch_2e
    const-string v4, "hr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    goto/16 :goto_22

    :cond_6e
    const/16 v4, 0x19

    goto/16 :goto_23

    :sswitch_2f
    const-string v4, "h6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto/16 :goto_22

    :cond_6f
    const/16 v4, 0x18

    goto/16 :goto_23

    :sswitch_30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto/16 :goto_22

    :cond_70
    const/16 v4, 0x17

    goto/16 :goto_23

    :sswitch_31
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    goto/16 :goto_22

    :cond_71
    const/16 v4, 0x16

    goto/16 :goto_23

    :sswitch_32
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    goto/16 :goto_22

    :cond_72
    const/16 v4, 0x15

    goto/16 :goto_23

    :sswitch_33
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    goto/16 :goto_22

    :cond_73
    const/16 v4, 0x14

    goto/16 :goto_23

    :sswitch_34
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    goto/16 :goto_22

    :cond_74
    const/16 v4, 0x13

    goto/16 :goto_23

    :sswitch_35
    const-string v4, "em"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto/16 :goto_22

    :cond_75
    const/16 v4, 0x12

    goto/16 :goto_23

    :sswitch_36
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    goto/16 :goto_22

    :cond_76
    const/16 v4, 0x11

    goto/16 :goto_23

    :sswitch_37
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    goto/16 :goto_22

    :cond_77
    const/16 v4, 0x10

    goto :goto_23

    :sswitch_38
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    goto/16 :goto_22

    :cond_78
    const/16 v4, 0xf

    goto :goto_23

    :sswitch_39
    const-string v4, "u"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    goto/16 :goto_22

    :cond_79
    const/16 v4, 0xe

    goto :goto_23

    :sswitch_3a
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto/16 :goto_22

    :cond_7a
    const/16 v4, 0xd

    goto :goto_23

    :sswitch_3b
    const-string v4, "i"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto/16 :goto_22

    :cond_7b
    const/16 v4, 0xc

    goto :goto_23

    :sswitch_3c
    const-string v4, "b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto/16 :goto_22

    :cond_7c
    const/16 v4, 0xb

    goto :goto_23

    :sswitch_3d
    const-string v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    goto/16 :goto_22

    :cond_7d
    const/16 v4, 0xa

    goto :goto_23

    :sswitch_3e
    const-string v4, "optgroup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    goto/16 :goto_22

    :cond_7e
    const/16 v4, 0x9

    :goto_23
    move/from16 v23, v4

    goto/16 :goto_24

    :sswitch_3f
    const-string v4, "strong"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    goto/16 :goto_22

    :cond_7f
    const/16 v23, 0x8

    goto/16 :goto_24

    :sswitch_40
    const-string v4, "strike"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto/16 :goto_22

    :cond_80
    const/16 v23, 0x7

    goto :goto_24

    :sswitch_41
    const-string v4, "select"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto/16 :goto_22

    :cond_81
    const/16 v23, 0x6

    goto :goto_24

    :sswitch_42
    const-string v4, "textarea"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    goto/16 :goto_22

    :cond_82
    const/16 v23, 0x5

    goto :goto_24

    :sswitch_43
    const-string v4, "option"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    goto/16 :goto_22

    :cond_83
    const/16 v23, 0x4

    goto :goto_24

    :sswitch_44
    const-string v4, "keygen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    goto/16 :goto_22

    :cond_84
    move/from16 v23, v19

    goto :goto_24

    :sswitch_45
    const-string v4, "iframe"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    goto/16 :goto_22

    :cond_85
    const/16 v23, 0x2

    goto :goto_24

    :sswitch_46
    const-string v4, "button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    goto/16 :goto_22

    :cond_86
    const/16 v23, 0x1

    goto :goto_24

    :sswitch_47
    const-string v4, "frameset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    goto/16 :goto_22

    :cond_87
    const/16 v23, 0x0

    :goto_24
    sget-object v4, Lcy3$z;->j:[Ljava/lang/String;

    const-string v5, "ruby"

    packed-switch v23, :pswitch_data_2

    invoke-virtual {v2, v8}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object v4

    invoke-virtual {v4}, Ljj8;->k()Lkx8;

    move-result-object v5

    if-eqz v5, :cond_88

    invoke-static {v8, v2, v5}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    const/16 v25, 0x1

    return v25

    :cond_88
    const/16 v25, 0x1

    iget v4, v4, Ljj8;->e:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8f

    sget-object v4, Lcy3$z;->h:[Ljava/lang/String;

    invoke-static {v0, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_89
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :cond_8a
    sget-object v4, Lcy3$z;->g:[Ljava/lang/String;

    invoke-static {v0, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    sget-object v0, Lcy3;->InHead:Lcy3;

    invoke-virtual {v0, v1, v2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result v0

    return v0

    :cond_8b
    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    iget-object v0, v2, Lby3;->q:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    const/16 v25, 0x1

    return v25

    :cond_8c
    const/4 v3, 0x0

    const/16 v25, 0x1

    sget-object v1, Lcy3$z;->m:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {v2, v8}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :cond_8d
    sget-object v1, Lcy3$z;->n:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v3

    :cond_8e
    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :cond_8f
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :pswitch_e
    const/16 v25, 0x1

    invoke-virtual {v2, v8}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object v0

    invoke-virtual {v0}, Ljj8;->k()Lkx8;

    move-result-object v0

    invoke-static {v8, v2, v0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    return v25

    :pswitch_f
    const/16 v25, 0x1

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_90
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    iget-object v0, v2, Lh39;->c:Ljx8;

    sget-object v1, Lkx8;->PLAINTEXT:Lkx8;

    invoke-virtual {v0, v1}, Ljx8;->o(Lkx8;)V

    return v25

    :pswitch_10
    iget-object v0, v2, Lh39;->d:Lorg/jsoup/nodes/f;

    iget-object v0, v0, Lorg/jsoup/nodes/f;->m:Lorg/jsoup/nodes/f$b;

    sget-object v1, Lorg/jsoup/nodes/f$b;->quirks:Lorg/jsoup/nodes/f$b;

    if-eq v0, v1, :cond_91

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_91
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    sget-object v0, Lcy3;->InTable:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    const/16 v25, 0x1

    return v25

    :pswitch_11
    const/4 v3, 0x0

    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    iput-boolean v3, v2, Lby3;->u:Z

    return v25

    :pswitch_12
    const/16 v25, 0x1

    const-string v0, "svg"

    invoke-virtual {v2, v0}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    if-nez v0, :cond_92

    const-string v0, "img"

    invoke-virtual {v8, v0}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lby3;->e(Lgx8;)Z

    move-result v0

    return v0

    :cond_92
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :pswitch_13
    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :pswitch_14
    move-object/from16 v0, p0

    invoke-virtual {v2}, Lby3;->N()V

    const-string v1, "nobr"

    invoke-virtual {v2, v1}, Lby3;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v1}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lby3;->N()V

    :cond_93
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Lby3;->j(Lorg/jsoup/nodes/h;)V

    iget-object v1, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    return v25

    :pswitch_15
    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    const-string v0, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v8, v0}, Lby3;->E(Lgx8$g;Ljava/lang/String;)V

    return v25

    :pswitch_16
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    move-object/from16 v4, v24

    invoke-virtual {v2, v4}, Lby3;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_94
    :goto_25
    const/16 v20, 0x0

    goto/16 :goto_30

    :cond_95
    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    invoke-static {v8, v0}, Lcy3;->e(Lgx8$g;Lorg/jsoup/nodes/h;)V

    const/16 v25, 0x1

    return v25

    :pswitch_17
    move-object/from16 v0, p0

    move-object/from16 v4, v24

    const/4 v3, 0x0

    iget-object v1, v2, Lby3;->p:Lorg/jsoup/nodes/l;

    if-eqz v1, :cond_96

    invoke-virtual {v2, v4}, Lby3;->H(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v3

    :cond_96
    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v2, v15}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, v2, Lby3;->l:Lcy3;

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_97
    invoke-virtual {v2, v15}, Lby3;->K(Ljava/lang/String;)V

    :cond_98
    const/4 v12, 0x1

    invoke-virtual {v2, v8, v12, v12}, Lby3;->F(Lgx8$g;ZZ)V

    return v12

    :pswitch_18
    move-object/from16 v0, p0

    move-object/from16 v4, v24

    const/4 v12, 0x1

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_94

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_99

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    invoke-virtual {v0, v10}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_99
    invoke-virtual {v2, v4}, Lby3;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto :goto_25

    :cond_9a
    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    invoke-virtual {v2, v10}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {v8, v0}, Lcy3;->e(Lgx8$g;Lorg/jsoup/nodes/h;)V

    const/16 v25, 0x1

    return v25

    :pswitch_19
    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_9b
    invoke-virtual {v2}, Lby3;->N()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    invoke-virtual {v2, v8}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object v0

    invoke-virtual {v0}, Ljj8;->k()Lkx8;

    move-result-object v0

    invoke-static {v8, v2, v0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    const/16 v25, 0x1

    return v25

    :pswitch_1a
    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v8, v0}, Lby3;->E(Lgx8$g;Ljava/lang/String;)V

    return v25

    :pswitch_1b
    const/16 v25, 0x1

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_9c
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    iget-object v0, v2, Lh39;->b:Lea1;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lea1;->k0(Ljava/lang/String;)Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    return v25

    :pswitch_1c
    move-object/from16 v0, p0

    invoke-virtual {v2, v5}, Lby3;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "rtc"

    invoke-virtual {v2, v1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {v2, v5}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_9d
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/16 v25, 0x1

    return v25

    :pswitch_1d
    move-object/from16 v0, p0

    const/16 v25, 0x1

    invoke-virtual {v2, v5}, Lby3;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lby3;->s(Z)V

    invoke-virtual {v2, v5}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    :cond_9e
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v25

    :pswitch_1e
    const/4 v3, 0x0

    const/16 v25, 0x1

    iput-boolean v3, v2, Lby3;->u:Z

    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-lez v1, :cond_a1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v2, v6}, Lh39;->f(Ljava/lang/String;)Z

    goto :goto_27

    :cond_9f
    invoke-static {v3}, Lby3;->G(Lorg/jsoup/nodes/h;)Z

    move-result v5

    if-eqz v5, :cond_a0

    iget-object v3, v3, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v3, v3, Ljj8;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a0

    goto :goto_27

    :cond_a0
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_a1
    :goto_27
    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_a2
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/16 v25, 0x1

    return v25

    :pswitch_1f
    const/16 v25, 0x1

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_a3
    invoke-virtual {v2, v8}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    return v25

    :pswitch_20
    move-object/from16 v0, p0

    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_a4
    invoke-virtual {v2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->d:Ljava/lang/String;

    move-object/from16 v3, v21

    invoke-static {v1, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2}, Lh39;->d()Lorg/jsoup/nodes/h;

    :cond_a5
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/16 v25, 0x1

    return v25

    :pswitch_21
    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    const/16 v5, 0x18

    if-lt v3, v5, :cond_a6

    add-int/lit8 v1, v1, -0x19

    goto :goto_28

    :cond_a6
    const/4 v1, 0x0

    :goto_28
    if-lt v3, v1, :cond_a9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/h;

    iget-object v6, v5, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v7, v6, Ljj8;->d:Ljava/lang/String;

    iget-object v6, v6, Ljj8;->d:Ljava/lang/String;

    sget-object v9, Lcy3$z;->k:[Ljava/lang/String;

    invoke-static {v7, v9}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-virtual {v2, v6}, Lh39;->f(Ljava/lang/String;)Z

    goto :goto_29

    :cond_a7
    invoke-static {v5}, Lby3;->G(Lorg/jsoup/nodes/h;)Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-static {v6, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a8

    goto :goto_29

    :cond_a8
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_a9
    :goto_29
    invoke-virtual {v2, v15}, Lby3;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {v2, v15}, Lh39;->f(Ljava/lang/String;)Z

    :cond_aa
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/16 v25, 0x1

    return v25

    :pswitch_22
    const/4 v12, 0x0

    move-object/from16 v0, p0

    const/16 v25, 0x1

    iget-object v1, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2a
    const-string v3, "a"

    if-ltz v1, :cond_ad

    iget-object v4, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    if-nez v4, :cond_ab

    goto :goto_2b

    :cond_ab
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    goto :goto_2c

    :cond_ac
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_ad
    :goto_2b
    move-object v4, v12

    :goto_2c
    if-eqz v4, :cond_ae

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v3}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {v2, v3}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {v2, v0}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    invoke-virtual {v2, v0}, Lby3;->P(Lorg/jsoup/nodes/h;)V

    :cond_ae
    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Lby3;->j(Lorg/jsoup/nodes/h;)V

    iget-object v1, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    return v25

    :pswitch_23
    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Lby3;->j(Lorg/jsoup/nodes/h;)V

    iget-object v1, v2, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v25

    :pswitch_24
    const/16 v25, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    iget-boolean v0, v8, Lgx8$h;->f:Z

    if-eqz v0, :cond_b0

    :cond_af
    :goto_2d
    return v25

    :cond_b0
    iget-object v0, v2, Lby3;->l:Lcy3;

    sget-object v1, Lcy3;->InTable:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lcy3;->InCaption:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lcy3;->InTableBody:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lcy3;->InRow:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lcy3;->InCell:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_b1
    const/4 v12, 0x1

    goto :goto_2e

    :cond_b2
    sget-object v0, Lcy3;->InSelect:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    const/4 v12, 0x1

    return v12

    :goto_2e
    sget-object v0, Lcy3;->InSelectInTable:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    return v12

    :pswitch_25
    const/4 v3, 0x0

    const/4 v12, 0x1

    iput-boolean v3, v2, Lby3;->u:Z

    invoke-virtual {v2, v8}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object v0

    invoke-virtual {v0}, Ljj8;->k()Lkx8;

    move-result-object v0

    invoke-static {v8, v2, v0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    return v12

    :pswitch_26
    const/4 v12, 0x1

    const-string v0, "option"

    invoke-virtual {v2, v0}, Lh39;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {v2, v0}, Lh39;->f(Ljava/lang/String;)Z

    :cond_b3
    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v12

    :pswitch_27
    const/4 v12, 0x1

    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    return v12

    :pswitch_28
    const/4 v3, 0x0

    const/4 v12, 0x1

    iput-boolean v3, v2, Lby3;->u:Z

    invoke-virtual {v2, v8}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object v0

    invoke-virtual {v0}, Ljj8;->k()Lkx8;

    move-result-object v0

    invoke-static {v8, v2, v0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    return v12

    :pswitch_29
    move-object/from16 v0, p0

    const/4 v12, 0x1

    const-string v1, "button"

    invoke-virtual {v2, v1}, Lby3;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v2, v1}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {v2, v8}, Lby3;->e(Lgx8;)Z

    return v12

    :cond_b4
    invoke-virtual {v2}, Lby3;->N()V

    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lby3;->u:Z

    return v12

    :pswitch_2a
    move-object/from16 v0, p0

    const/4 v12, 0x1

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    iget-object v0, v2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_94

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_b5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    goto/16 :goto_25

    :cond_b5
    iget-boolean v1, v2, Lby3;->u:Z

    if-nez v1, :cond_b6

    goto/16 :goto_25

    :cond_b6
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    iget-object v3, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v3, :cond_b7

    if-eqz v3, :cond_b7

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_b7
    :goto_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v12, :cond_b8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    :cond_b8
    invoke-virtual {v2, v8}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object v0, Lcy3;->InFrameset:Lcy3;

    iput-object v0, v2, Lby3;->l:Lcy3;

    return v12

    :goto_30
    return v20

    :pswitch_2b
    move/from16 v20, v8

    invoke-virtual {v2, v0}, Lby3;->q(Lcy3;)V

    return v20

    :pswitch_2c
    move/from16 v12, v25

    move-object v0, v1

    check-cast v0, Lgx8$c;

    invoke-virtual {v2, v0}, Lby3;->B(Lgx8$c;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_47
        -0x521dd8ce -> :sswitch_46
        -0x47007d5c -> :sswitch_45
        -0x43a19f6f -> :sswitch_44
        -0x3c35778b -> :sswitch_43
        -0x3bcc48c6 -> :sswitch_42
        -0x3600cb04 -> :sswitch_41
        -0x352aa04e -> :sswitch_40
        -0x352a8969 -> :sswitch_3f
        -0x4d08054 -> :sswitch_3e
        0x61 -> :sswitch_3d
        0x62 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x73 -> :sswitch_3a
        0x75 -> :sswitch_39
        0xc50 -> :sswitch_38
        0xc80 -> :sswitch_37
        0xc90 -> :sswitch_36
        0xca8 -> :sswitch_35
        0xcc9 -> :sswitch_34
        0xcca -> :sswitch_33
        0xccb -> :sswitch_32
        0xccc -> :sswitch_31
        0xccd -> :sswitch_30
        0xcce -> :sswitch_2f
        0xd0a -> :sswitch_2e
        0xd7d -> :sswitch_2d
        0xe30 -> :sswitch_2c
        0xe3e -> :sswitch_2b
        0xe42 -> :sswitch_2a
        0xe80 -> :sswitch_29
        0x17d00 -> :sswitch_28
        0x197c3 -> :sswitch_27
        0x1b2a3 -> :sswitch_26
        0x1ba61 -> :sswitch_25
        0x1be64 -> :sswitch_24
        0x1cb07 -> :sswitch_23
        0x1d01b -> :sswitch_22
        0x2dd08d -> :sswitch_21
        0x2e39a2 -> :sswitch_20
        0x2eaded -> :sswitch_1f
        0x300c4f -> :sswitch_1e
        0x300cc4 -> :sswitch_1d
        0x3107ab -> :sswitch_1c
        0x330708 -> :sswitch_1b
        0x33add1 -> :sswitch_1a
        0x35f74a -> :sswitch_19
        0x5c24ed9 -> :sswitch_18
        0x5faa95b -> :sswitch_17
        0x5fb57ca -> :sswitch_16
        0x6879507 -> :sswitch_15
        0x6903bce -> :sswitch_14
        0xad8ba84 -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_26
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_27
        :pswitch_19
        :pswitch_27
        :pswitch_18
        :pswitch_23
        :pswitch_23
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_27
        :pswitch_12
        :pswitch_11
        :pswitch_23
        :pswitch_10
        :pswitch_1b
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final g(Lgx8;Lby3;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lgx8$f;

    iget-object p1, p1, Lgx8$h;->e:Ljava/lang/String;

    iget-object v0, p2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, p1}, Lby3;->r(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_1
    invoke-virtual {p2, p1}, Lby3;->K(Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-static {v4}, Lby3;->G(Lorg/jsoup/nodes/h;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method
