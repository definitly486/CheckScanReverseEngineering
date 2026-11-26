.class public final Lyads/xr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nc1;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Ljava/util/List;

.field public final f:Lorg/json/JSONObject;

.field public final g:Lyads/as2;

.field public final h:Ljava/lang/String;

.field public final i:Lyads/as2;

.field public final j:Lyads/ry0;

.field public final k:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lorg/json/JSONObject;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/ry0;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xr0;->a:Lyads/nc1;

    iput-object p2, p0, Lyads/xr0;->b:Lyads/as2;

    iput-object p3, p0, Lyads/xr0;->c:Lyads/as2;

    iput-object p4, p0, Lyads/xr0;->d:Lyads/as2;

    iput-object p5, p0, Lyads/xr0;->e:Ljava/util/List;

    iput-object p6, p0, Lyads/xr0;->f:Lorg/json/JSONObject;

    iput-object p7, p0, Lyads/xr0;->g:Lyads/as2;

    iput-object p8, p0, Lyads/xr0;->h:Ljava/lang/String;

    iput-object p9, p0, Lyads/xr0;->i:Lyads/as2;

    iput-object p10, p0, Lyads/xr0;->j:Lyads/ry0;

    iput-object p11, p0, Lyads/xr0;->k:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-object v5, v0, Lyads/xr0;->a:Lyads/nc1;

    iget-object v6, v1, Lyads/xr0;->a:Lyads/nc1;

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6, v2, v3}, Lyads/nc1;->a(Lyads/nc1;Lyads/fs2;Lyads/fs2;)Z

    move-result v5

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v1, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v6, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v5, v6, :cond_1b

    iget-object v5, v0, Lyads/xr0;->c:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lyads/xr0;->c:Lyads/as2;

    invoke-virtual {v6, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->d:Lyads/as2;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    iget-object v8, v1, Lyads/xr0;->d:Lyads/as2;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    invoke-static {v5, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->e:Ljava/util/List;

    iget-object v8, v1, Lyads/xr0;->e:Ljava/util/List;

    if-eqz v5, :cond_11

    if-nez v8, :cond_5

    return v4

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    goto/16 :goto_c

    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v4

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/ur0;

    check-cast v10, Lyads/ur0;

    if-nez v9, :cond_7

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :cond_7
    iget-object v12, v10, Lyads/ur0;->a:Lyads/xr0;

    iget-object v13, v9, Lyads/ur0;->a:Lyads/xr0;

    if-eqz v12, :cond_8

    invoke-virtual {v12, v13, v2, v3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v12

    goto :goto_4

    :cond_8
    if-nez v13, :cond_9

    move v12, v7

    goto :goto_4

    :cond_9
    move v12, v4

    :goto_4
    if-eqz v12, :cond_1b

    iget-object v12, v10, Lyads/ur0;->b:Ljava/util/List;

    iget-object v13, v9, Lyads/ur0;->b:Ljava/util/List;

    if-eqz v12, :cond_e

    if-nez v13, :cond_a

    goto/16 :goto_c

    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v4

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_d

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/xr0;

    check-cast v15, Lyads/xr0;

    invoke-virtual {v15, v14, v2, v3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_c

    :cond_c
    move/from16 v14, v16

    goto :goto_5

    :cond_d
    invoke-static {}, Lu96;->o()V

    throw v6

    :cond_e
    if-nez v13, :cond_1b

    :cond_f
    iget-object v10, v10, Lyads/ur0;->c:Lyads/as2;

    invoke-virtual {v10, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v10

    iget-object v9, v9, Lyads/ur0;->c:Lyads/as2;

    invoke-virtual {v9, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v9, v11

    goto/16 :goto_3

    :cond_10
    invoke-static {}, Lu96;->o()V

    throw v6

    :cond_11
    if-nez v8, :cond_1b

    :cond_12
    iget-object v5, v0, Lyads/xr0;->f:Lorg/json/JSONObject;

    iget-object v8, v1, Lyads/xr0;->f:Lorg/json/JSONObject;

    invoke-static {v5, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->g:Lyads/as2;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_6

    :cond_13
    move-object v5, v6

    :goto_6
    iget-object v8, v1, Lyads/xr0;->g:Lyads/as2;

    if-eqz v8, :cond_14

    invoke-virtual {v8, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    goto :goto_7

    :cond_14
    move-object v8, v6

    :goto_7
    invoke-static {v5, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->h:Ljava/lang/String;

    iget-object v8, v1, Lyads/xr0;->h:Ljava/lang/String;

    invoke-static {v5, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lyads/xr0;->i:Lyads/as2;

    if-eqz v5, :cond_15

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/wr0;

    goto :goto_8

    :cond_15
    move-object v5, v6

    :goto_8
    iget-object v8, v1, Lyads/xr0;->i:Lyads/as2;

    if-eqz v8, :cond_16

    invoke-virtual {v8, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/wr0;

    goto :goto_9

    :cond_16
    move-object v8, v6

    :goto_9
    if-ne v5, v8, :cond_1b

    iget-object v5, v0, Lyads/xr0;->j:Lyads/ry0;

    iget-object v8, v1, Lyads/xr0;->j:Lyads/ry0;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v8, v2, v3}, Lyads/ry0;->a(Lyads/ry0;Lyads/fs2;Lyads/fs2;)Z

    move-result v5

    goto :goto_a

    :cond_17
    if-nez v8, :cond_18

    move v5, v7

    goto :goto_a

    :cond_18
    move v5, v4

    :goto_a
    if-eqz v5, :cond_1b

    iget-object v0, v0, Lyads/xr0;->k:Lyads/as2;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_b

    :cond_19
    move-object v0, v6

    :goto_b
    iget-object v1, v1, Lyads/xr0;->k:Lyads/as2;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/Uri;

    :cond_1a
    invoke-static {v0, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v7

    :cond_1b
    :goto_c
    return v4
.end method
