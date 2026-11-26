.class public final Lyads/hg5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/lg5;


# direct methods
.method public constructor <init>(Lyads/lg5;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/hg5;->b:Lyads/lg5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/hg5;

    iget-object p0, p0, Lyads/hg5;->b:Lyads/lg5;

    invoke-direct {p1, p0, p2}, Lyads/hg5;-><init>(Lyads/lg5;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/hg5;

    iget-object p0, p0, Lyads/hg5;->b:Lyads/lg5;

    invoke-direct {p1, p0, p2}, Lyads/hg5;-><init>(Lyads/lg5;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/hg5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/hg5;->b:Lyads/lg5;

    iget-boolean v1, v0, Lyads/lg5;->r:Z

    if-nez v1, :cond_7

    iget-object v4, v0, Lyads/lg5;->p:Lyads/d9;

    iget-object v1, v0, Lyads/lg5;->a:Lyads/yn;

    iget-object v10, v1, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-eqz v4, :cond_8

    iget-object v5, v0, Lyads/lg5;->q:Lyads/pg4;

    if-eqz v5, :cond_8

    iget-object v9, v0, Lyads/lg5;->d:Lyads/qo;

    iget-object v3, v0, Lyads/lg5;->n:Landroid/content/Context;

    iget-object v14, v0, Lyads/lg5;->g:Lyads/di4;

    iget-object v11, v0, Lyads/lg5;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v1, v1, Lyads/yn;->G:Lyads/gd6;

    iget-object v13, v0, Lyads/lg5;->l:Lyads/c60;

    const/4 v7, 0x0

    iget-object v2, v9, Lyads/qo;->b:Lyads/ms3;

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v2 .. v8}, Lyads/ms3;->a(Landroid/content/Context;Lyads/d9;Lyads/pg4;Lyads/h80;Lyads/m2;Lyads/b4;)Lyads/mr3;

    move-result-object v2

    iget-object v6, v9, Lyads/qo;->a:Lyads/ko;

    iget-object v7, v6, Lyads/ko;->c:Lyads/mo1;

    invoke-virtual {v7, v3}, Lyads/mo1;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Lyads/pg4;->f()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lyads/fo1;

    iget-object v12, v12, Lyads/fo1;->a:Ljava/lang/String;

    sget-object v15, Lyads/un0;->b:[Lyads/un0;

    const-string v15, "ad"

    invoke-static {v12, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_1
    move-object v9, v8

    :goto_0
    check-cast v9, Lyads/fo1;

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    if-eqz v9, :cond_3

    new-instance v7, Lyads/jo;

    iget-object v12, v6, Lyads/ko;->a:Lyads/e4;

    iget-object v6, v6, Lyads/ko;->b:Lyads/bf5;

    invoke-direct {v7, v9, v12, v6}, Lyads/jo;-><init>(Lyads/fo1;Lyads/e4;Lyads/bf5;)V

    move-object v6, v7

    goto :goto_2

    :cond_3
    move-object v6, v8

    :goto_2
    if-eqz v6, :cond_6

    new-instance v15, Lyads/pz;

    iget-object v7, v6, Lyads/jo;->a:Lyads/fo1;

    iget-object v7, v7, Lyads/fo1;->h:Lyads/nn0;

    invoke-direct {v15, v7}, Lyads/pz;-><init>(Lyads/nn0;)V

    new-instance v7, Lyads/io;

    invoke-direct {v7}, Lyads/io;-><init>()V

    iget-object v9, v6, Lyads/jo;->c:Lyads/bf5;

    check-cast v9, Lyads/do6;

    iget-object v9, v9, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v9, v9}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v16

    iget-object v9, v6, Lyads/jo;->d:Lyads/mn1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v5, Lyads/ni4;

    if-eqz v9, :cond_4

    move-object v12, v11

    new-instance v11, Lyads/um5;

    move-object/from16 v17, v12

    move-object v12, v5

    check-cast v12, Lyads/ni4;

    move-object/from16 v23, v17

    invoke-direct/range {v11 .. v16}, Lyads/um5;-><init>(Lyads/ni4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V

    move-object v12, v5

    :goto_3
    move v5, v9

    goto :goto_4

    :cond_4
    move-object/from16 v23, v11

    new-instance v11, Lyads/hf4;

    move-object v12, v5

    invoke-direct/range {v11 .. v16}, Lyads/hf4;-><init>(Lyads/pg4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V

    goto :goto_3

    :goto_4
    new-instance v9, Lyads/vn1;

    invoke-direct {v9, v15}, Lyads/vn1;-><init>(Lyads/pz;)V

    iget-object v14, v6, Lyads/jo;->e:Lyads/d81;

    iget-object v15, v6, Lyads/jo;->a:Lyads/fo1;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_5

    new-instance v5, Lyads/ym5;

    iget-object v8, v14, Lyads/d81;->a:Lyads/q84;

    invoke-direct {v5, v8}, Lyads/ym5;-><init>(Lyads/q84;)V

    move-object v8, v12

    check-cast v8, Lyads/ni4;

    invoke-virtual {v5, v15, v8}, Lyads/ym5;->a(Lyads/fo1;Lyads/ni4;)V

    invoke-static {v3, v5, v9}, Lyads/zm5;->a(Landroid/content/Context;Lyads/ym5;Lyads/vn1;)Lyads/c81;

    move-result-object v5

    :goto_5
    move-object/from16 v19, v5

    goto :goto_6

    :cond_5
    new-instance v5, Lyads/eo1;

    invoke-direct {v5, v3, v9, v8}, Lyads/eo1;-><init>(Landroid/content/Context;Lyads/vn1;Lyads/kb0;)V

    iget-object v5, v5, Lyads/eo1;->d:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/c81;

    goto :goto_5

    :goto_6
    new-instance v18, Lyads/kn1;

    move-object v5, v4

    iget-object v4, v6, Lyads/jo;->b:Lyads/e4;

    move-object v8, v5

    iget-object v5, v6, Lyads/jo;->c:Lyads/bf5;

    move-object v14, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v13

    move-object v13, v2

    move-object/from16 v2, v18

    invoke-direct/range {v2 .. v9}, Lyads/kn1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/c60;Lyads/ln1;Lyads/vn1;)V

    move-object v4, v6

    new-instance v21, Lyads/yx2;

    invoke-direct/range {v21 .. v21}, Lyads/yx2;-><init>()V

    iget-object v5, v14, Lyads/jo;->a:Lyads/fo1;

    iget-object v5, v5, Lyads/fo1;->e:Lyads/db1;

    move-object/from16 v20, v16

    new-instance v16, Lyads/un1;

    const/16 v22, 0xc0

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v22}, Lyads/un1;-><init>(Lyads/db1;Lyads/kn1;Lyads/c81;Lyads/q84;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v2, Lyads/ei4;

    invoke-interface {v12}, Lyads/pg4;->d()Lyads/sj4;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lyads/ei4;-><init>(Lyads/sj4;Lyads/gd6;)V

    new-instance v1, Lyads/v40;

    const/4 v5, 0x3

    new-array v5, v5, [Lyads/on0;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-direct {v1, v5}, Lyads/v40;-><init>([Lyads/on0;)V

    new-instance v2, Lyads/ho1;

    invoke-direct {v2, v4}, Lyads/ho1;-><init>(Lyads/d9;)V

    iget-object v5, v14, Lyads/jo;->f:Lyads/pr3;

    sget v6, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lyads/mr3;

    invoke-direct {v8, v6, v1, v2}, Lyads/mr3;-><init>(ILyads/on0;Lyads/pn0;)V

    goto :goto_7

    :cond_6
    move-object v13, v2

    move-object/from16 v23, v11

    :goto_7
    filled-new-array {v13, v8}, [Lyads/mr3;

    move-result-object v1

    invoke-static {v1}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lyads/po;

    new-instance v5, Lyads/oo;

    move-object/from16 v12, v23

    invoke-direct {v5, v3, v10, v1, v12}, Lyads/oo;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {v2, v5}, Lyads/po;-><init>(Lyads/oo;)V

    iput-object v2, v0, Lyads/lg5;->s:Lyads/po;

    invoke-virtual {v4}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v1

    new-instance v3, Lyads/kg5;

    invoke-direct {v3, v0}, Lyads/kg5;-><init>(Lyads/lg5;)V

    invoke-virtual {v2, v1, v3}, Lyads/po;->a(Lyads/wx2;Lyads/fo;)V

    goto :goto_8

    :cond_7
    iget-object v0, v0, Lyads/lg5;->a:Lyads/yn;

    sget-object v1, Lyads/o8;->f:Lyads/m4;

    invoke-virtual {v0, v1}, Lyads/yn;->b(Lyads/m4;)V

    :cond_8
    :goto_8
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
