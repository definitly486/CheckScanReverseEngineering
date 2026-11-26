.class public final Lod6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac6;
.implements Lcom/posthog/internal/replay/PostHogSessionReplayHandler;


# static fields
.field public static volatile A:Z


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lta6;

.field public final d:Laz4;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lxe9;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lfh8;

.field public final h:Lfh8;

.field public final i:Lfh8;

.field public final j:Landroid/graphics/Rect;

.field public final k:Landroid/graphics/Point;

.field public volatile l:Z

.field public final m:Ljava/lang/Object;

.field public volatile n:Ljava/lang/String;

.field public o:Loa6;

.field public p:Lqd6;

.field public volatile q:Ljava/lang/String;

.field public final r:Ljava/lang/Object;

.field public volatile s:Z

.field public t:Ljava/lang/Long;

.field public u:Z

.field public v:I

.field public final w:Lod6$a;

.field public final x:Lkd6;

.field public final y:Lld6;

.field public final z:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lta6;Laz4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod6;->b:Landroid/content/Context;

    iput-object p2, p0, Lod6;->c:Lta6;

    iput-object p3, p0, Lod6;->d:Laz4;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lod6;->e:Ljava/util/Map;

    const/16 p1, 0x80

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x90

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0xe0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lod6;->f:Ljava/util/Set;

    new-instance p1, Lvu1;

    invoke-direct {p1, p0}, Lvu1;-><init>(Lod6;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lod6;->g:Lfh8;

    new-instance p1, Ljd6;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ljd6;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lod6;->h:Lfh8;

    new-instance p1, Lzi0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lzi0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lod6;->i:Lfh8;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lod6;->j:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lod6;->k:Landroid/graphics/Point;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod6;->m:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod6;->r:Ljava/lang/Object;

    new-instance p1, Lod6$a;

    invoke-direct {p1, p0}, Lod6$a;-><init>(Lod6;)V

    iput-object p1, p0, Lod6;->w:Lod6$a;

    new-instance p1, Lkd6;

    invoke-direct {p1, p0}, Lkd6;-><init>(Lod6;)V

    iput-object p1, p0, Lod6;->x:Lkd6;

    new-instance p1, Lld6;

    invoke-direct {p1, p0}, Lld6;-><init>(Lod6;)V

    iput-object p1, p0, Lod6;->y:Lld6;

    sget-object p1, Lpo4;->PUBLICATION:Lpo4;

    new-instance p2, Lq;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lq;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lod6;->z:Lcl4;

    return-void
.end method

.method public static d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lta6;->N:Laq5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lza6;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_6

    invoke-static {p0, v5, p2, p3}, Lod6;->d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v1, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p0, v1, p2, p3}, Lod6;->d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    :cond_6
    :try_start_1
    iget-object p0, p0, Lod6;->h:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p0}, Lza6;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    :catchall_1
    return-object v0
.end method

.method public static e(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/posthog/internal/replay/RRWireframe;->getChildWireframes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lod6;->e(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static g(Lod6;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 39

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lod6;->l:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Lod6;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxe9;

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Window;

    if-nez v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, Ltl;->b(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v3, v0, Lod6;->c:Lta6;

    iget-object v3, v3, Lnb6;->I:Lqb6;

    invoke-interface {v3}, Lqb6;->currentTimeMillis()J

    move-result-wide v7

    iget-object v3, v0, Lod6;->c:Lta6;

    iget-object v3, v3, Lta6;->N:Laq5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lod6;->s(Landroid/view/View;Ljava/lang/Integer;Z)Lcom/posthog/internal/replay/RRWireframe;

    move-result-object v10

    if-nez v10, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v10}, Lcom/posthog/internal/replay/RRWireframe;->getStyle()Lcom/posthog/internal/replay/RRStyle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/posthog/internal/replay/RRStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move-object v4, v3

    :goto_0
    const/4 v11, 0x1

    if-nez v4, :cond_9

    iget-object v4, v0, Lod6;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v6, 0x1010054

    invoke-virtual {v4, v6, v5, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v5, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_7

    const/16 v6, 0x1f

    if-gt v4, v6, :cond_7

    iget v4, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_7
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lod6;->q(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v10}, Lcom/posthog/internal/replay/RRWireframe;->getStyle()Lcom/posthog/internal/replay/RRStyle;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundColor(Ljava/lang/String;)V

    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, v2, Lxe9;->c:Z

    if-nez v4, :cond_c

    invoke-static {v1}, Lti9;->a(Landroid/view/View;)Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "/"

    invoke-static {v4, v5, v4}, Lta8;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_a
    const-string v4, ""

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lza6;->e(Landroid/content/Context;)Lrd6;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_5
    return-void

    :cond_b
    iget v5, v4, Lrd6;->a:I

    iget v6, v4, Lrd6;->b:I

    new-instance v4, Lcom/posthog/internal/replay/RRMetaEvent;

    invoke-direct/range {v4 .. v9}, Lcom/posthog/internal/replay/RRMetaEvent;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v2, Lxe9;->c:Z

    :cond_c
    iget-boolean v4, v2, Lxe9;->b:Z

    if-nez v4, :cond_d

    new-instance v4, Lcom/posthog/internal/replay/RRFullSnapshotEvent;

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-wide v8, v7

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/posthog/internal/replay/RRFullSnapshotEvent;-><init>(Ljava/util/List;IIJ)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v2, Lxe9;->b:Z

    move-object/from16 v17, v1

    goto/16 :goto_15

    :cond_d
    iget-object v4, v2, Lxe9;->e:Lcom/posthog/internal/replay/RRWireframe;

    if-eqz v4, :cond_e

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_6

    :cond_e
    sget-object v4, Lkx2;->b:Lkx2;

    :goto_6
    invoke-static {v4}, Lod6;->e(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lod6;->e(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v9}, Lm05;->b(I)I

    move-result v9

    const/16 v11, 0x10

    if-ge v9, v11, :cond_f

    move v9, v11

    :cond_f
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v15}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    invoke-static {v5, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v9}, Lm05;->b(I)I

    move-result v9

    if-ge v9, v11, :cond_11

    goto :goto_8

    :cond_11
    move v11, v9

    :goto_8
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v15}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_12
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v15}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v15}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v14}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual/range {v16 .. v16}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v16

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto :goto_c

    :cond_16
    move-object/from16 v17, v1

    invoke-static {v14, v6}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/posthog/internal/replay/RRWireframe;

    invoke-virtual {v11}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14, v6}, Lqn1;->X(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Lcom/posthog/internal/replay/RRWireframe;

    if-eqz v18, :cond_19

    const v37, 0x3ffdf

    const/16 v38, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v18 .. v38}, Lcom/posthog/internal/replay/RRWireframe;->copy$default(Lcom/posthog/internal/replay/RRWireframe;IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;

    move-result-object v6

    if-nez v6, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/posthog/internal/replay/RRWireframe;

    if-nez v18, :cond_1b

    goto :goto_e

    :cond_1b
    const v37, 0x3ffdf

    const/16 v38, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v18 .. v38}, Lcom/posthog/internal/replay/RRWireframe;->copy$default(Lcom/posthog/internal/replay/RRWireframe;IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;

    move-result-object v5

    move-object/from16 v11, v18

    invoke-virtual {v6, v5}, Lcom/posthog/internal/replay/RRWireframe;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_1c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/posthog/internal/replay/RRWireframe;

    new-instance v9, Lcom/posthog/internal/replay/RRMutatedNode;

    invoke-virtual {v6}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v6, v11}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/posthog/internal/replay/RRWireframe;

    new-instance v9, Lcom/posthog/internal/replay/RRRemovedNode;

    invoke-virtual {v6}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    move-result v11

    invoke-virtual {v6}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v9, v11, v6}, Lcom/posthog/internal/replay/RRRemovedNode;-><init>(ILjava/lang/Integer;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/posthog/internal/replay/RRWireframe;

    new-instance v9, Lcom/posthog/internal/replay/RRMutatedNode;

    invoke-virtual {v6}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v6, v11}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_20
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v19, 0x0

    goto :goto_12

    :cond_21
    move-object/from16 v19, v4

    :goto_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v20, 0x0

    goto :goto_13

    :cond_22
    move-object/from16 v20, v5

    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v21, 0x0

    goto :goto_14

    :cond_23
    move-object/from16 v21, v3

    :goto_14
    new-instance v18, Lcom/posthog/internal/replay/RRIncrementalMutationData;

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v24}, Lcom/posthog/internal/replay/RRIncrementalMutationData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;ILjh2;)V

    move-object/from16 v1, v18

    new-instance v3, Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;

    invoke-direct {v3, v1, v7, v8}, Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;-><init>(Lcom/posthog/internal/replay/RRIncrementalMutationData;J)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_15
    iget-boolean v1, v2, Lxe9;->d:Z

    invoke-static/range {v17 .. v17}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    if-nez v3, :cond_25

    new-instance v3, Lb36;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v5

    if-ne v1, v5, :cond_26

    new-instance v3, Lb36;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v3, v1, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_26
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "open"

    if-eqz v5, :cond_27

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lod6;->h()F

    move-result v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_27
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    new-instance v3, Lcom/posthog/internal/replay/RRCustomEvent;

    iget-object v4, v0, Lod6;->c:Lta6;

    iget-object v4, v4, Lnb6;->I:Lqb6;

    invoke-interface {v4}, Lqb6;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, "keyboard"

    invoke-direct {v3, v4, v1, v6, v7}, Lcom/posthog/internal/replay/RRCustomEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v1, Lb36;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v1

    :goto_17
    iget-object v1, v3, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Lcom/posthog/internal/replay/RRCustomEvent;

    iput-boolean v1, v2, Lxe9;->d:Z

    if-eqz v3, :cond_28

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, v0, Lod6;->o:Loa6;

    invoke-static {v12, v0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Lbc6;)V

    :cond_29
    iput-object v10, v2, Lxe9;->e:Lcom/posthog/internal/replay/RRWireframe;

    return-void
.end method

.method public static j(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ph-no-mask"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-ne p0, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static q(I)Ljava/lang/String;
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%06X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Lod6;->q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    invoke-static {v3}, Lod6;->r(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lod6;->r(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    aget p0, v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Lod6;->q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {p0}, Lod6;->q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    :cond_7
    return-object v2
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lod6;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lnb6;->v:Lic6;

    const-string v0, "[Session Replay] First remote config fetch failed. Falling back to the cached session replay flag."

    invoke-interface {p1, v0}, Lic6;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lod6;->o()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lad6;->H:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-object p1, p0, Lod6;->t:Ljava/lang/Long;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    iget-object p1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-boolean v0, p0, Lod6;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    invoke-virtual {p0}, Lod6;->o()V

    iget-object p1, p0, Lod6;->o:Loa6;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "Remote config disabled recording. Stopping."

    iget-boolean v0, p0, Lod6;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "[Session Replay] "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lic6;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lod6;->l:Z

    iget-object p1, p0, Lod6;->d:Laz4;

    iget-object p1, p1, Laz4;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lid6;

    invoke-direct {v0, p0}, Lid6;-><init>(Lod6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Lbc6;)V
    .locals 4

    sget-boolean v0, Lod6;->A:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    sput-boolean v0, Lod6;->A:Z

    check-cast p1, Loa6;

    iput-object p1, p0, Lod6;->o:Loa6;

    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lta6;->O:Lqd6;

    iput-object p1, p0, Lod6;->p:Lqd6;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lqd6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lpd6;

    invoke-direct {v3, p1, v1}, Lpd6;-><init>(Ljava/lang/Object;I)V

    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p1, p0, Lod6;->p:Lqd6;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lod6;->w:Lod6$a;

    iput-object v2, p1, Lqd6;->e:Lod6$a;

    :cond_1
    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lad6;->H:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-object p1, p0, Lod6;->t:Ljava/lang/Long;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v2

    iget-object p1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v2, p0, Lod6;->c:Lta6;

    iget-boolean v3, v2, Lnb6;->e:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lnb6;->c:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lnb6;->H:Lad6;

    if-eqz v2, :cond_4

    iget-object v1, v2, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    xor-int/2addr v1, v0

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lod6;->u:Z

    iget v1, p0, Lod6;->v:I

    add-int/2addr v1, v0

    iput v1, p0, Lod6;->v:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    sget-object p1, Lw62;->a:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly77;

    iget-object p1, p1, Ly77;->b:Ly77$a;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lod6;->c(Landroid/view/View;Z)V

    goto :goto_2

    :cond_5
    :try_start_3
    sget-object p1, Lw62;->a:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly77;

    iget-object p1, p1, Ly77;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lod6;->x:Lkd6;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Session Replay setup failed: "

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_6
    return-void
.end method

.method public final c(Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Lod6;->c:Lta6;

    :try_start_0
    invoke-static {p1}, Lti9;->a(Landroid/view/View;)Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lod6;->e:Ljava/util/Map;

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    move v2, v4

    :goto_0
    iget-object v6, p0, Lod6;->y:Lld6;

    if-eqz p2, :cond_4

    :try_start_2
    invoke-static {p1}, Lib4;->windowAttachCount(Landroid/view/View;)I

    move-result p1

    if-eqz p1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lnb6;->v:Lic6;

    const-string p1, "Session Replay already has onDecorViewReady."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    new-instance p1, Lnd6;

    invoke-direct {p1, v4, p0, v1}, Lnd6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Lnd6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object p0, Lji9;->e:Lcl4;

    invoke-static {v1}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p0

    iget-object p2, p0, Lwl7;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lsi9;

    invoke-direct {v2, p0, v1, p1}, Lsi9;-><init>(Lwl7;Landroid/view/Window;Lnd6;)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-object p0, Lji9;->e:Lcl4;

    invoke-static {v1}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p0

    iget-object p0, p0, Lwl7;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxe9;

    if-eqz p2, :cond_8

    invoke-static {p1}, Ltl;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    iget-object v1, p0, Lod6;->d:Laz4;

    iget-object v1, v1, Laz4;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lfd6;

    invoke-direct {v2, p1, p2, p0, v4}, Lfd6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-static {p1}, Lti9;->a(Landroid/view/View;)Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object p2, Lji9;->e:Lcl4;

    invoke-static {p0}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p0

    iget-object p0, p0, Lwl7;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    return-void

    :goto_4
    iget-object p1, v0, Lnb6;->v:Lic6;

    const-string p2, "Session Replay OnRootViewsChangedListener failed: "

    const/16 v0, 0x2e

    invoke-static {p2, p0, v0, p1}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    return-void
.end method

.method public final f(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_6

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/16 v0, 0x1d

    if-ltz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    :goto_2
    float-to-int v6, v6

    invoke-virtual {v1}, Lod6;->h()F

    move-result v8

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v9, v6

    if-ltz v5, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v0, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    :goto_4
    float-to-int v0, v0

    invoke-virtual {v1}, Lod6;->h()F

    move-result v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v10, v0

    new-instance v6, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;

    const/16 v14, 0x70

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p4

    invoke-direct/range {v6 .. v15}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;-><init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;ILjh2;)V

    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v6, v7, v8}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionEvent;-><init>(Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;J)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide/from16 v7, p1

    :goto_5
    iget-object v6, v1, Lod6;->c:Lta6;

    iget-object v6, v6, Lnb6;->v:Lic6;

    const-string v9, "Reading MotionEvent pointers failed: "

    const/16 v10, 0x2e

    invoke-static {v9, v0, v10, v6}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lod6;->o:Loa6;

    invoke-static {v3, v0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Lbc6;)V

    :cond_7
    return-void
.end method

.method public final h()F
    .locals 0

    iget-object p0, p0, Lod6;->i:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final i(Landroid/view/View;Z)Z
    .locals 0

    if-nez p2, :cond_1

    invoke-static {p1}, Lod6;->j(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lta6;->N:Laq5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lod6;->l:Z

    return p0
.end method

.method public final k(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lyd6;->a:Ljava/lang/Object;

    sget-boolean v1, Lyd6;->g:Z

    if-eqz v1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isInLayout()Z

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v2, :cond_5

    return v2

    :cond_5
    :goto_4
    return v0

    :goto_5
    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v1, "Session Replay view state check failed: "

    const/16 v2, 0x2e

    invoke-static {v1, p1, v2, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    return v0
.end method

.method public final l(Lqd6;)V
    .locals 13

    iget-object v0, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lod6;->t:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-exit v0

    const/4 v0, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p1, Lqd6;->d:Led6;

    iget-object v3, v2, Led6;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v6, v2, Led6;->c:Ljava/util/ArrayList;

    invoke-static {v6}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v2, Led6;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :try_start_2
    const-string v9, ".event"

    invoke-static {v6, v9}, Lta8;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    ushr-long/2addr v9, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v6, ".event"

    invoke-static {v2, v6}, Lta8;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v11

    ushr-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v9

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    monitor-exit v3

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lod6;->c:Lta6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Session Replay] Minimum duration met. Migrating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lqd6;->d:Led6;

    invoke-virtual {v3}, Led6;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " buffered events to replay queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lic6;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iput-boolean v0, p0, Lod6;->s:Z

    sget-object v0, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v1

    invoke-virtual {p0, p1}, Lod6;->m(Lqd6;)V

    goto :goto_3

    :catchall_3
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5
    :goto_3
    return-void

    :goto_4
    monitor-exit v3

    throw p0

    :cond_6
    :goto_5
    iget-object v1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iput-boolean v0, p0, Lod6;->s:Z

    sget-object v0, Lj59;->a:Lj59;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v1

    invoke-virtual {p0, p1}, Lod6;->m(Lqd6;)V

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final m(Lqd6;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lod6;->g:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lx42;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p0}, Lx42;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Session Replay scheduling migrateBufferToQueue failed: "

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lod6;->q:Ljava/lang/String;

    invoke-static {p2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_3

    :cond_0
    iput-object p1, p0, Lod6;->q:Ljava/lang/String;

    iget-object p1, p0, Lod6;->e:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lod6;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxe9;

    iput-boolean v1, v0, Lxe9;->b:Z

    iput-boolean v1, v0, Lxe9;->c:Z

    iput-boolean v1, v0, Lxe9;->d:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lxe9;->e:Lcom/posthog/internal/replay/RRWireframe;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v1, p0, Lod6;->s:Z

    iget-object p2, p0, Lod6;->c:Lta6;

    iget-boolean v0, p2, Lnb6;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lnb6;->c:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lnb6;->H:Lad6;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lod6;->u:Z

    iget p2, p0, Lod6;->v:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lod6;->v:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p1

    iget-object p0, p0, Lod6;->p:Lqd6;

    if-eqz p0, :cond_4

    iget-object p1, p0, Lqd6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lpd6;

    invoke-direct {p2, p0, v1}, Lpd6;-><init>(Ljava/lang/Object;I)V

    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_4
    :goto_3
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :goto_4
    monitor-exit p1

    throw p0
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lod6;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Lod6;->v:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v0

    iget-object v0, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget v2, p0, Lod6;->v:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lod6;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lod6;->stop()V

    iget-object v0, p0, Lod6;->p:Lqd6;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lqd6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lpd6;

    invoke-direct {v4, v0, v3}, Lpd6;-><init>(Ljava/lang/Object;I)V

    :try_start_3
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_4
    iget-object v0, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget v2, p0, Lod6;->v:I

    if-ne v2, v1, :cond_5

    iput-boolean v3, p0, Lod6;->u:Z

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0

    :goto_4
    monitor-exit v0

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lod6;->o:Loa6;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Loa6;->q()Ljava/util/UUID;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->H:Lad6;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lyd6;->a:Ljava/lang/Object;

    sget-boolean v2, Lyd6;->g:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lad6;->G:Ljava/util/Set;

    :cond_3
    :goto_0
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lod6;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lod6;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v2, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lod6;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-object p2, p0, Lod6;->n:Ljava/lang/String;

    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Session Replay] Event trigger matched: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Starting replay for session "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lic6;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lod6;->start(Z)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public final onSessionIdChanged()V
    .locals 5

    iget-object v0, p0, Lod6;->o:Loa6;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyd6;->c:Ljava/util/UUID;

    sget-object v2, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Lyd6;->c:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lod6;->n(Ljava/lang/String;Z)V

    iget-object v1, p0, Lod6;->c:Lta6;

    iget-object v1, v1, Lnb6;->H:Lad6;

    if-eqz v1, :cond_4

    sget-boolean v3, Lyd6;->g:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lad6;->G:Ljava/util/Set;

    :cond_4
    :goto_2
    iget-object v3, p0, Lod6;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lod6;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v4, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v0, p0, Lod6;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "[Session Replay] Session changed. Stopping until trigger is matched."

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lod6;->stop()V

    return-void

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    iget-boolean v0, p0, Lod6;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "[Session Replay] Session cleared. Stopping recording."

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lod6;->d:Laz4;

    iget-object v0, v0, Laz4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Liu0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Liu0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_4
    return-void

    :cond_8
    iget-object v2, p0, Lod6;->c:Lta6;

    iget-object v2, v2, Lnb6;->v:Lic6;

    const-string v3, "[Session Replay] Session changed. Re-initializing recording for new session."

    invoke-interface {v2, v3}, Lic6;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lod6;->d:Laz4;

    iget-object v2, v2, Laz4;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lmd6;

    invoke-direct {v3, p0, v1, v0}, Lmd6;-><init>(Lod6;Lad6;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final p(Landroid/widget/TextView;Z)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lod6;->i(Landroid/view/View;Z)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lod6;->f:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final s(Landroid/view/View;Ljava/lang/Integer;Z)Lcom/posthog/internal/replay/RRWireframe;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lod6;->c:Lta6;

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v6, v0, Landroid/view/View;

    if-eqz v6, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    move-result v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    move-object v7, v0

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_5

    cmpg-float v6, v6, v8

    if-lez v6, :cond_5

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lod6;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lod6;->j:Landroid/graphics/Rect;

    iget-object v6, v1, Lod6;->k:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    :goto_2
    move v0, v4

    goto :goto_4

    :goto_3
    iget-object v6, v3, Lnb6;->v:Lic6;

    const-string v7, "Session Replay isVisible failed: "

    const/16 v8, 0x2e

    invoke-static {v7, v0, v8, v6}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    move v0, v5

    :goto_4
    const/4 v6, 0x0

    if-nez v0, :cond_6

    return-object v6

    :cond_6
    if-nez p3, :cond_8

    invoke-static {v2}, Lod6;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v5

    :goto_6
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    const/4 v7, 0x2

    new-array v9, v7, [I

    invoke-virtual/range {p0 .. p1}, Lod6;->k(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_7

    :cond_9
    aput v4, v9, v4

    aput v4, v9, v5

    :goto_7
    aget v10, v9, v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v11

    int-to-float v10, v10

    div-float/2addr v10, v11

    float-to-int v10, v10

    aget v9, v9, v5

    invoke-virtual {v1}, Lod6;->h()F

    move-result v11

    int-to-float v9, v9

    div-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Lod6;->h()F

    move-result v12

    int-to-float v11, v11

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-virtual {v1}, Lod6;->h()F

    move-result v13

    int-to-float v12, v12

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v13

    const v14, 0x102002f

    if-ne v13, v14, :cond_a

    const-string v13, "status_bar"

    goto :goto_8

    :cond_a
    move-object v13, v6

    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x1020030

    if-ne v14, v15, :cond_b

    const-string v13, "navigation_bar"

    :cond_b
    new-instance v14, Lcom/posthog/internal/replay/RRStyle;

    const v32, 0x1ffff

    const/16 v33, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v14 .. v33}, Lcom/posthog/internal/replay/RRStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-static {v15}, Lod6;->r(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundColor(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v1, v15, v4, v6}, Lod6;->d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundImage(Ljava/lang/String;)V

    :cond_d
    :goto_9
    instance-of v4, v2, Landroid/widget/TextView;

    const-string v6, "*"

    const-string v15, "input"

    if-eqz v4, :cond_28

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v1, v4, v0}, Lod6;->p(Landroid/widget/TextView;Z)Z

    move-result v18

    if-nez v18, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13, v6}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_d

    :cond_12
    const/16 v18, 0x0

    :goto_d
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_16

    :cond_13
    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_14

    goto :goto_e

    :cond_14
    invoke-virtual {v1, v4, v0}, Lod6;->p(Landroid/widget/TextView;Z)Z

    move-result v13

    if-nez v13, :cond_15

    move-object/from16 v13, v18

    goto :goto_e

    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13, v6}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_16
    :goto_e
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lod6;->q(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setColor(Ljava/lang/String;)V

    instance-of v7, v2, Landroid/widget/Button;

    if-eqz v7, :cond_17

    instance-of v7, v2, Landroid/widget/CompoundButton;

    if-nez v7, :cond_17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setBorderWidth(Ljava/lang/Integer;)V

    const-string v7, "#000000"

    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setBorderColor(Ljava/lang/String;)V

    const-string v7, "button"

    move-object/from16 v18, v13

    move-object v13, v15

    const/16 v19, 0x0

    goto :goto_f

    :cond_17
    const-string v7, "text"

    move-object/from16 v19, v13

    const/16 v18, 0x0

    move-object v13, v7

    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v21, v4

    if-eqz v5, :cond_1b

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "sans-serif"

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "sans-serif-bold"

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "monospace"

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "serif"

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    :cond_1b
    :goto_10
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setFontSize(Ljava/lang/Integer;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTextAlignment()I

    move-result v4

    const-string v5, "right"

    move/from16 v22, v4

    const-string v4, "left"

    move-object/from16 v23, v7

    const-string v7, "center"

    packed-switch v22, :pswitch_data_0

    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_0
    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_1
    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_2
    invoke-virtual {v14, v7}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_3
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getGravity()I

    move-result v22

    move-object/from16 v24, v4

    and-int/lit8 v4, v22, 0x7

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x11

    if-eq v4, v5, :cond_1e

    const v5, 0x800003

    if-eq v4, v5, :cond_1c

    const v5, 0x800005

    if-eq v4, v5, :cond_1d

    :cond_1c
    move-object/from16 v5, v24

    goto :goto_11

    :cond_1d
    move-object/from16 v5, v22

    goto :goto_11

    :cond_1e
    move-object v5, v7

    :goto_11
    invoke-virtual {v14, v5}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x11

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x30

    if-eq v4, v5, :cond_21

    const/16 v5, 0x50

    if-eq v4, v5, :cond_20

    :cond_1f
    move-object v4, v7

    goto :goto_12

    :cond_20
    const-string v4, "bottom"

    goto :goto_12

    :cond_21
    const-string v4, "top"

    :goto_12
    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    :goto_13
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v4

    move-object/from16 v22, v4

    move/from16 v24, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v4, v5, :cond_25

    move/from16 v25, v4

    aget-object v4, v22, v25

    add-int/lit8 v26, v8, 0x1

    move/from16 v27, v5

    if-eqz v4, :cond_24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v5

    move/from16 v28, v9

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v1, v4, v5, v9}, Lod6;->d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_23

    const/4 v5, 0x2

    if-eq v8, v5, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setIconRight(Ljava/lang/String;)V

    goto :goto_15

    :cond_23
    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setIconLeft(Ljava/lang/String;)V

    goto :goto_15

    :cond_24
    move/from16 v28, v9

    :goto_15
    add-int/lit8 v4, v25, 0x1

    move/from16 v8, v26

    move/from16 v5, v27

    move/from16 v9, v28

    goto :goto_14

    :cond_25
    move/from16 v28, v9

    invoke-virtual {v14}, Lcom/posthog/internal/replay/RRStyle;->getVerticalAlign()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setPaddingTop(Ljava/lang/Integer;)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setPaddingBottom(Ljava/lang/Integer;)V

    :cond_26
    invoke-virtual {v14}, Lcom/posthog/internal/replay/RRStyle;->getHorizontalAlign()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setPaddingLeft(Ljava/lang/Integer;)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Lod6;->h()F

    move-result v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setPaddingRight(Ljava/lang/Integer;)V

    :cond_27
    move-object/from16 v7, v23

    goto :goto_16

    :cond_28
    move/from16 v24, v8

    move/from16 v28, v9

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_16
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_29

    move-object v4, v2

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "checkbox"

    move-object v13, v15

    move-object/from16 v5, v19

    const/16 v19, 0x0

    goto :goto_17

    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    instance-of v8, v2, Landroid/widget/RadioGroup;

    if-eqz v8, :cond_2a

    const-string v13, "radio_group"

    :cond_2a
    instance-of v8, v2, Landroid/widget/RadioButton;

    if-eqz v8, :cond_2b

    move-object v4, v2

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "radio"

    move-object v13, v15

    move-object/from16 v5, v19

    const/16 v19, 0x0

    :cond_2b
    instance-of v8, v2, Landroid/widget/EditText;

    if-eqz v8, :cond_2c

    const-string v7, "text_area"

    move-object v13, v15

    move-object/from16 v18, v19

    const/16 v19, 0x0

    :cond_2c
    new-instance v8, Lr07;

    invoke-direct {v8}, Lr07;-><init>()V

    instance-of v9, v2, Landroid/widget/Spinner;

    if-eqz v9, :cond_35

    move-object v7, v2

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v1, v7, v0}, Lod6;->i(Landroid/view/View;Z)Z

    move-result v9

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2e

    if-nez v9, :cond_2d

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_18
    move-object/from16 v18, v13

    goto :goto_19

    :cond_2d
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13, v6}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_18

    :cond_2e
    :goto_19
    invoke-virtual {v7}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    if-eqz v7, :cond_34

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v4

    invoke-interface {v7}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    move-object/from16 v22, v5

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_32

    invoke-interface {v7, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_2f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_30

    :cond_2f
    move/from16 v25, v4

    goto :goto_1d

    :cond_30
    if-nez v9, :cond_31

    move/from16 v25, v4

    :goto_1b
    move-object/from16 v4, v23

    goto :goto_1c

    :cond_31
    move/from16 v25, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v6}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_1b

    :goto_1c
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v25

    goto :goto_1a

    :cond_32
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v13, 0x0

    :cond_33
    iput-object v13, v8, Lr07;->b:Ljava/lang/Object;

    goto :goto_1e

    :cond_34
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    :goto_1e
    const-string v7, "select"

    move-object v13, v15

    goto :goto_1f

    :cond_35
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    :goto_1f
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3b

    move-object v4, v2

    check-cast v4, Landroid/widget/ImageView;

    if-nez v0, :cond_3a

    invoke-static {v4}, Lod6;->j(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_23

    :cond_36
    iget-object v3, v3, Lta6;->N:Laq5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3a

    instance-of v5, v3, Landroid/graphics/drawable/InsetDrawable;

    if-nez v5, :cond_39

    instance-of v5, v3, Landroid/graphics/drawable/ColorDrawable;

    if-nez v5, :cond_39

    instance-of v5, v3, Landroid/graphics/drawable/VectorDrawable;

    if-nez v5, :cond_39

    instance-of v5, v3, Landroid/graphics/drawable/GradientDrawable;

    if-nez v5, :cond_39

    instance-of v5, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_37

    goto :goto_21

    :cond_37
    instance-of v5, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_38

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lza6;->d(Landroid/graphics/Bitmap;)Z

    move-result v3

    :goto_20
    const/4 v5, 0x1

    goto :goto_22

    :cond_38
    const/4 v3, 0x1

    goto :goto_20

    :cond_39
    :goto_21
    const/4 v3, 0x0

    goto :goto_20

    :goto_22
    if-ne v3, v5, :cond_3a

    const/4 v5, 0x1

    goto :goto_24

    :cond_3a
    :goto_23
    const/4 v5, 0x0

    :goto_24
    const-string v13, "image"

    if-nez v5, :cond_3b

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v5, v4}, Lod6;->d(Lod6;Landroid/graphics/drawable/Drawable;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_3b
    const/4 v3, 0x0

    :goto_25
    instance-of v4, v2, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3d

    move-object v4, v2

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v4, "circular"

    const/4 v5, 0x0

    goto :goto_26

    :cond_3c
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v4, "horizontal"

    :goto_26
    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setBar(Ljava/lang/String;)V

    const-string v7, "progress"

    move-object v13, v15

    goto :goto_27

    :cond_3d
    const/4 v5, 0x0

    :goto_27
    instance-of v4, v2, Landroid/widget/RatingBar;

    if-eqz v4, :cond_3e

    const-string v4, "rating"

    invoke-virtual {v14, v4}, Lcom/posthog/internal/replay/RRStyle;->setBar(Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RatingBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    :cond_3e
    move-object/from16 v25, v5

    instance-of v4, v2, Landroid/widget/Switch;

    if-eqz v4, :cond_3f

    move-object v4, v2

    check-cast v4, Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "toggle"

    move-object/from16 v22, v4

    move-object v13, v15

    move-object/from16 v5, v19

    const/16 v19, 0x0

    :goto_28
    move-object v15, v7

    goto :goto_29

    :cond_3f
    move-object/from16 v5, v22

    move-object/from16 v22, v21

    goto :goto_28

    :goto_29
    instance-of v4, v2, Landroid/webkit/WebView;

    if-eqz v4, :cond_40

    const-string v13, "web_view"

    :cond_40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_43

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_43

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v7, :cond_43

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_41

    move-object/from16 p3, v3

    goto :goto_2b

    :cond_41
    move-object/from16 p3, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lod6;->s(Landroid/view/View;Ljava/lang/Integer;Z)Lcom/posthog/internal/replay/RRWireframe;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_2b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    goto :goto_2a

    :cond_43
    move-object/from16 p3, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v6, 0x0

    goto :goto_2c

    :cond_44
    move-object v6, v4

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/16 v20, 0x1

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, v8, Lr07;->b:Ljava/lang/Object;

    move-object/from16 v23, v1

    check-cast v23, Ljava/util/List;

    new-instance v7, Lcom/posthog/internal/replay/RRWireframe;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v17, v5

    move v9, v10

    move-object/from16 v20, v14

    move-object/from16 v16, v19

    move/from16 v8, v24

    move/from16 v10, v28

    move-object/from16 v24, p2

    move-object/from16 v19, p3

    move-object v14, v13

    move-object v13, v6

    invoke-direct/range {v7 .. v25}, Lcom/posthog/internal/replay/RRWireframe;-><init>(IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final start(Z)V
    .locals 5

    iget-object v0, p0, Lod6;->o:Loa6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Loa6;->q()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lod6;->c:Lta6;

    iget-object v3, v3, Lnb6;->H:Lad6;

    if-eqz v3, :cond_3

    sget-object v4, Lyd6;->a:Ljava/lang/Object;

    sget-boolean v4, Lyd6;->g:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lad6;->G:Ljava/util/Set;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, v2

    :goto_1
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lod6;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lod6;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {v4, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    iget-object p1, p0, Lod6;->c:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-eqz p1, :cond_7

    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    sget-boolean v0, Lyd6;->g:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, p1, Lad6;->G:Ljava/util/Set;

    :cond_7
    :goto_4
    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Session Replay] Event triggers configured. Integration will not start until any of these events are captured: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lod6;->o:Loa6;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Loa6;->q()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lod6;->n(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lod6;->l:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lod6;->d:Laz4;

    iget-object p1, p1, Laz4;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lx;

    invoke-direct {v0, p0, v1}, Lx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lod6;->l:Z

    return-void
.end method
