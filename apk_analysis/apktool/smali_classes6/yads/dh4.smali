.class public final Lyads/dh4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/i00;

.field public final b:Ly22;

.field public final c:Lyads/nn0;

.field public final d:Lyads/qh4;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lyads/rh4;Lyads/e4;Lyads/bf5;Lyads/b05;Lyads/we3;Lyads/of4;Lyads/mk;Lyads/sj4;Lyads/aj4;Lyads/d9;Lyads/hm4;Lyads/we4;Lyads/j24;Lyads/uj5;Lyads/ac0;Lyads/nn0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    sget-object v3, Lyads/i00;->a:Lyads/i00;

    new-instance v4, Lyads/i90;

    invoke-direct {v4}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v5

    invoke-static {v5, v4}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v14

    new-instance v4, Lyads/ph4;

    iget-object v5, v1, Lyads/rh4;->a:Lyads/ih4;

    iget-object v6, v5, Lyads/ih4;->c:Landroid/view/View;

    iget-object v5, v5, Lyads/ih4;->d:Ljava/util/LinkedHashMap;

    invoke-direct {v4, v6, v5}, Lyads/ph4;-><init>(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    iget-object v1, v1, Lyads/rh4;->a:Lyads/ih4;

    iget-object v5, v1, Lyads/ih4;->a:Landroid/widget/CheckBox;

    iput-object v5, v4, Lyads/ph4;->b:Landroid/widget/CheckBox;

    iget-object v5, v1, Lyads/ih4;->b:Landroid/widget/ProgressBar;

    iput-object v5, v4, Lyads/ph4;->c:Landroid/widget/ProgressBar;

    iget-object v1, v1, Lyads/ih4;->e:Ljava/util/List;

    iput-object v1, v4, Lyads/ph4;->d:Ljava/util/List;

    new-instance v1, Lyads/qh4;

    invoke-direct {v1, v4}, Lyads/qh4;-><init>(Lyads/ph4;)V

    new-instance v12, Lyads/tj6;

    invoke-direct {v12, v1}, Lyads/tj6;-><init>(Lyads/qh4;)V

    new-instance v5, Lyads/a24;

    move-object/from16 v4, p6

    iget-object v9, v4, Lyads/of4;->d:Lyads/b24;

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v6, p7

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v13, p14

    invoke-direct/range {v5 .. v13}, Lyads/a24;-><init>(Lyads/mk;Lyads/e4;Lyads/we3;Lyads/b24;Lyads/we4;Lyads/j24;Lyads/tj6;Lyads/uj5;)V

    move-object/from16 v4, p3

    check-cast v4, Lyads/do6;

    iget-object v4, v4, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v4, v4}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v12

    new-instance v6, Lyads/ck;

    move-object/from16 v8, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v7, p10

    move-object/from16 v13, p15

    move-object v9, v5

    invoke-direct/range {v6 .. v14}, Lyads/ck;-><init>(Lyads/d9;Lyads/b05;Lyads/a24;Lyads/sj4;Lyads/aj4;Lyads/q84;Lyads/ac0;Ly22;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "close_button"

    invoke-virtual {v1, v5}, Lyads/qh4;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    check-cast v7, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    new-instance v8, Lyads/i10;

    invoke-direct {v8, v7}, Lyads/i10;-><init>(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    new-instance v7, Lyads/hj0;

    invoke-direct {v7, v8}, Lyads/hj0;-><init>(Lyads/rf6;)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "feedback"

    invoke-virtual {v1, v5}, Lyads/qh4;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    check-cast v7, Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    new-instance v8, Lyads/rw2;

    new-instance v10, Lyads/hc3;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v13, Lyads/kj4;

    move-object/from16 v15, p10

    invoke-direct {v13, v15}, Lyads/kj4;-><init>(Lyads/d9;)V

    move-object/from16 v15, p4

    invoke-direct {v10, v11, v13, v15}, Lyads/hc3;-><init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;)V

    invoke-direct {v8, v7, v10, v14}, Lyads/rw2;-><init>(Landroid/widget/ImageView;Lyads/hc3;Ly22;)V

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_5

    new-instance v7, Lyads/wb3;

    invoke-direct {v7, v8}, Lyads/wb3;-><init>(Lyads/rf6;)V

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lyads/qh4;->b:Lyads/e55;

    sget-object v7, Lyads/qh4;->g:[Lze4;

    const/4 v8, 0x1

    aget-object v8, v7, v8

    iget-object v5, v5, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v8, "media"

    invoke-virtual {v1, v8}, Lyads/qh4;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v11, :cond_6

    check-cast v10, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v6, v5, v10}, Lyads/ck;->a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lyads/ey3;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "rating"

    invoke-virtual {v1, v5}, Lyads/qh4;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lyads/b45;

    if-eqz v11, :cond_7

    new-instance v11, Lyads/a45;

    invoke-direct {v11, v10, v12}, Lyads/a45;-><init>(Landroid/view/View;Lyads/q84;)V

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_8

    new-instance v10, Lyads/hj0;

    invoke-direct {v10, v11}, Lyads/hj0;-><init>(Lyads/rf6;)V

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v10, Lyads/jb5;

    invoke-direct {v10, v5}, Lyads/jb5;-><init>(Landroid/view/View;)V

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_a

    new-instance v5, Lyads/hj0;

    invoke-direct {v5, v10}, Lyads/hj0;-><init>(Lyads/rf6;)V

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    :goto_a
    const-string v10, "root_container"

    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lyads/qh4;->e:Lyads/e55;

    const/4 v10, 0x4

    aget-object v7, v7, v10

    iget-object v5, v5, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/yb0;

    iget-object v10, v7, Lyads/yb0;->a:Ljava/lang/String;

    iget-object v11, v2, Lyads/hm4;->f:Lyads/s70;

    if-eqz v11, :cond_b

    iget-object v11, v11, Lyads/s70;->e:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v7}, Lyads/yb0;->a()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_c

    new-instance v13, Lyads/hj0;

    iget-object v15, v6, Lyads/ck;->f:Lyads/ac0;

    new-instance v9, Lyads/bc0;

    invoke-direct {v9, v12, v15, v7, v11}, Lyads/bc0;-><init>(Landroid/view/View;Lyads/ac0;Lyads/yb0;Ljava/lang/String;)V

    invoke-direct {v13, v9}, Lyads/hj0;-><init>(Lyads/rf6;)V

    goto :goto_d

    :cond_c
    const/4 v13, 0x0

    :goto_d
    invoke-virtual {v4, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_d
    iget-object v2, v2, Lyads/hm4;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ak;

    iget-object v7, v5, Lyads/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lyads/qh4;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v9, v5, Lyads/ak;->a:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v5, Lyads/ak;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_10

    :sswitch_0
    const-string v10, "warning"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_10

    :cond_f
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_10

    move-object v9, v7

    check-cast v9, Landroid/widget/TextView;

    goto :goto_f

    :cond_10
    const/4 v9, 0x0

    :goto_f
    if-eqz v9, :cond_11

    move-object v9, v7

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lyads/jj6;

    invoke-direct {v10, v9}, Lyads/jj6;-><init>(Landroid/widget/TextView;)V

    new-instance v9, Lyads/hj0;

    invoke-direct {v9, v10}, Lyads/hj0;-><init>(Lyads/rf6;)V

    const/4 v10, 0x0

    goto/16 :goto_15

    :cond_11
    :goto_10
    const/4 v10, 0x0

    goto/16 :goto_14

    :sswitch_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    instance-of v9, v7, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v9, :cond_12

    move-object v9, v7

    check-cast v9, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    goto :goto_11

    :cond_12
    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_11

    move-object v9, v7

    check-cast v9, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Lyads/ck;->a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lyads/ey3;

    move-result-object v9

    goto/16 :goto_15

    :sswitch_2
    const/4 v10, 0x0

    const-string v11, "image"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_14

    :cond_13
    instance-of v9, v7, Landroid/widget/ImageView;

    if-eqz v9, :cond_14

    move-object v9, v7

    check-cast v9, Landroid/widget/ImageView;

    goto :goto_12

    :cond_14
    move-object v9, v10

    :goto_12
    if-eqz v9, :cond_18

    move-object v9, v7

    check-cast v9, Landroid/widget/ImageView;

    new-instance v11, Lyads/be3;

    iget-object v12, v6, Lyads/ck;->b:Lyads/b05;

    iget-object v13, v6, Lyads/ck;->a:Lyads/d9;

    iget-object v15, v6, Lyads/ck;->g:Ly22;

    invoke-direct {v11, v9, v12, v13, v15}, Lyads/be3;-><init>(Landroid/widget/ImageView;Lyads/b05;Lyads/d9;Ly22;)V

    new-instance v9, Lyads/wb3;

    invoke-direct {v9, v11}, Lyads/wb3;-><init>(Lyads/rf6;)V

    goto :goto_15

    :sswitch_3
    const/4 v10, 0x0

    const-string v11, "container"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_14

    :cond_15
    new-instance v9, Lyads/jb5;

    invoke-direct {v9, v7}, Lyads/jb5;-><init>(Landroid/view/View;)V

    new-instance v11, Lyads/hj0;

    invoke-direct {v11, v9}, Lyads/hj0;-><init>(Lyads/rf6;)V

    move-object v9, v11

    goto :goto_15

    :sswitch_4
    const/4 v10, 0x0

    const-string v11, "string"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_14

    :sswitch_5
    const/4 v10, 0x0

    const-string v11, "number"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_14

    :cond_16
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_17

    move-object v9, v7

    check-cast v9, Landroid/widget/TextView;

    goto :goto_13

    :cond_17
    move-object v9, v10

    :goto_13
    if-eqz v9, :cond_18

    move-object v9, v7

    check-cast v9, Landroid/widget/TextView;

    new-instance v11, Lyads/jw5;

    invoke-direct {v11, v9}, Lyads/jw5;-><init>(Landroid/widget/TextView;)V

    new-instance v9, Lyads/hj0;

    invoke-direct {v9, v11}, Lyads/hj0;-><init>(Lyads/rf6;)V

    goto :goto_15

    :cond_18
    :goto_14
    move-object v9, v10

    :goto_15
    if-nez v9, :cond_19

    new-instance v9, Lyads/bn0;

    invoke-direct {v9, v7}, Lyads/bn0;-><init>(Landroid/view/View;)V

    new-instance v7, Lyads/hj0;

    invoke-direct {v7, v9}, Lyads/hj0;-><init>(Lyads/rf6;)V

    move-object v9, v7

    :cond_19
    iget-object v5, v5, Lyads/ak;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_1a
    iget-object v2, v1, Lyads/qh4;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_1b

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    new-instance v7, Lyads/bn0;

    invoke-direct {v7, v5}, Lyads/bn0;-><init>(Landroid/view/View;)V

    new-instance v5, Lyads/hj0;

    invoke-direct {v5, v7}, Lyads/hj0;-><init>(Lyads/rf6;)V

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_1c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lyads/dh4;->a:Lyads/i00;

    iput-object v14, v0, Lyads/dh4;->b:Ly22;

    move-object/from16 v2, p16

    iput-object v2, v0, Lyads/dh4;->c:Lyads/nn0;

    iput-object v1, v0, Lyads/dh4;->d:Lyads/qh4;

    iput-object v4, v0, Lyads/dh4;->e:Ljava/util/HashMap;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_5
        -0x352a9fef -> :sswitch_4
        -0x187eb37f -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x62f6fe4 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lyads/ak;)Lyads/bk;
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    iget-object p0, p0, Lyads/dh4;->e:Ljava/util/HashMap;

    .line 30
    iget-object p1, p1, Lyads/ak;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bk;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/dh4;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/bk;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {p0}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
