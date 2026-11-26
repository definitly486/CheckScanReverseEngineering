.class public final Lnj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsy6;

.field public final b:Lqu3;


# direct methods
.method public constructor <init>(Lgk;Lsy6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnj;->a:Lsy6;

    sget-boolean p1, Lru3;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lv24;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lv24;-><init>(Z)V

    goto :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1b

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lv24;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lv24;-><init>(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lq1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput-object p1, p0, Lnj;->b:Lqu3;

    return-void
.end method

.method public static a(Lb24;)Landroidx/lifecycle/Lifecycle;
    .locals 2

    iget-object v0, p0, Lb24;->c:Lxk8;

    instance-of v1, v0, Lre9;

    if-eqz v1, :cond_0

    check-cast v0, Lre9;

    invoke-interface {v0}, Lre9;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lb24;->a:Landroid/content/Context;

    :goto_0
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Lb24;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lf24;->f:Lb53$b;

    invoke-static {p0, p1}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lb24;->c:Lxk8;

    instance-of p1, p0, Lre9;

    if-eqz p1, :cond_1

    check-cast p0, Lre9;

    invoke-interface {p0}, Lre9;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final c(Lb24;Lt18;)Lzz5;
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Lzz5;

    move-object v2, v1

    iget-object v1, v0, Lb24;->a:Landroid/content/Context;

    iget-object v3, v0, Lb24;->p:Lmd7;

    iget-object v4, v0, Lb24;->q:Lre6;

    iget-object v6, v0, Lb24;->e:Lw93;

    iget-object v7, v0, Lb24;->i:Lsx0;

    iget-object v8, v0, Lb24;->j:Lsx0;

    iget-object v9, v0, Lb24;->k:Lsx0;

    sget-object v5, Lf24;->b:Lb53$b;

    invoke-static {v0, v5}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap$Config;

    sget-object v11, Lf24;->g:Lb53$b;

    invoke-static {v0, v11}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    sget-object v13, Ld24;->a:Lb53$b;

    invoke-static {v0, v13}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    const/16 v16, 0x0

    if-nez v14, :cond_1

    sget-object v14, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15}, Lyr;->E([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v14, v16

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    invoke-static {v0, v5}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap$Config;

    move-object/from16 v17, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v15, v1, :cond_4

    invoke-static {v0, v5}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lnj;->b(Lb24;Landroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v1, v1, Lnj;->b:Lqu3;

    move-object/from16 v15, p2

    invoke-interface {v1, v15}, Lqu3;->a(Lt18;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_2
    move-object/from16 v15, p2

    :cond_3
    move/from16 v1, v16

    goto :goto_3

    :cond_4
    move-object/from16 v15, p2

    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v14, :cond_5

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_4
    if-eqz v12, :cond_6

    invoke-static {v0, v13}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v10, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    move/from16 v1, v16

    :goto_5
    iget-object v12, v0, Lb24;->t:Lb24$b;

    iget-object v12, v12, Lb24$b;->n:Lb53;

    iget-object v12, v12, Lb53;->a:Ljava/util/Map;

    iget-object v13, v0, Lb24;->r:Lb53;

    iget-object v13, v13, Lb53;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v12

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v12}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v5}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap$Config;

    if-eq v10, v12, :cond_8

    if-eqz v10, :cond_7

    invoke-interface {v13, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    invoke-interface {v13, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    invoke-static {v0, v11}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v13, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-instance v10, Lb53;

    invoke-static {v13}, Lrn1;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Lb53;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    move-object v0, v2

    move-object v2, v15

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v10}, Lzz5;-><init>(Landroid/content/Context;Lt18;Lmd7;Lre6;Ljava/lang/String;Lw93;Lsx0;Lsx0;Lsx0;Lb53;)V

    return-object v0
.end method

.method public final d(Lzz5;)Lzz5;
    .locals 11

    iget-object v0, p1, Lzz5;->j:Lb53;

    sget-object v1, Lf24;->b:Lb53$b;

    invoke-static {p1, v1}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lnj;->b:Lqu3;

    invoke-interface {p0}, Lqu3;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lb53;->a:Ljava/util/Map;

    invoke-static {p0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v0, Lb53;

    invoke-static {p0}, Lrn1;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lb53;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x1

    :goto_1
    move-object v10, v0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_3
    if-eqz p0, :cond_3

    iget-object v1, p1, Lzz5;->a:Landroid/content/Context;

    iget-object v2, p1, Lzz5;->b:Lt18;

    iget-object v3, p1, Lzz5;->c:Lmd7;

    iget-object v4, p1, Lzz5;->d:Lre6;

    iget-object v5, p1, Lzz5;->e:Ljava/lang/String;

    iget-object v6, p1, Lzz5;->f:Lw93;

    iget-object v7, p1, Lzz5;->g:Lsx0;

    iget-object v8, p1, Lzz5;->h:Lsx0;

    iget-object v9, p1, Lzz5;->i:Lsx0;

    new-instance v0, Lzz5;

    invoke-direct/range {v0 .. v10}, Lzz5;-><init>(Landroid/content/Context;Lt18;Lmd7;Lre6;Ljava/lang/String;Lw93;Lsx0;Lsx0;Lsx0;Lb53;)V

    return-object v0

    :cond_3
    return-object p1
.end method
