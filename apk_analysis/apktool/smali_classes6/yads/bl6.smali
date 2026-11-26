.class public Lyads/bl6;
.super Lyads/yh2;
.source "SourceFile"

# interfaces
.implements Lyads/wj;


# static fields
.field public static final synthetic z:[Lze4;


# instance fields
.field public c:I

.field public final d:Lyads/hp0;

.field public final e:Lyads/hp0;

.field public final f:Lyads/hp0;

.field public final g:Lyads/hp0;

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:Lyads/xh2;

.field public x:I

.field public final y:Lyads/hp0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lyads/bl6;

    const-string v1, "showSeparators"

    const-string v2, "getShowSeparators()I"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "showLineSeparators"

    const-string v4, "getShowLineSeparators()I"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v2

    const-string v4, "separatorDrawable"

    const-string v5, "getSeparatorDrawable()Landroid/graphics/drawable/Drawable;"

    invoke-static {v0, v4, v5, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v4

    const-string v5, "lineSeparatorDrawable"

    const-string v6, "getLineSeparatorDrawable()Landroid/graphics/drawable/Drawable;"

    invoke-static {v0, v5, v6, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v5

    const-string v6, "aspectRatio"

    const-string v7, "getAspectRatio()F"

    invoke-static {v0, v6, v7, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v6, 0x5

    new-array v6, v6, [Lze4;

    aput-object v1, v6, v3

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    const/4 v1, 0x4

    aput-object v0, v6, v1

    sput-object v6, Lyads/bl6;->z:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {p0, p1, v2, v3, v0}, Lyads/yh2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {v1}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/bl6;->d:Lyads/hp0;

    invoke-static {v1}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/bl6;->e:Lyads/hp0;

    invoke-static {v2}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/bl6;->f:Lyads/hp0;

    invoke-static {v2}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/bl6;->g:Lyads/hp0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/bl6;->h:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    new-instance p1, Lyads/xh2;

    invoke-direct {p1}, Lyads/xh2;-><init>()V

    iput-object p1, p0, Lyads/bl6;->w:Lyads/xh2;

    invoke-static {}, Lyads/vj;->a()Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/bl6;->y:Lyads/hp0;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V
    .locals 2

    if-eqz p0, :cond_0

    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p4

    .line 289
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    sub-float p4, p2, p5

    float-to-int p4, p4

    sub-float v1, p3, v0

    float-to-int v1, v1

    add-float/2addr p2, p5

    float-to-int p2, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 290
    invoke-virtual {p0, p4, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    sget-object p0, Lj59;->a:Lj59;

    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 0

    .line 276
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)Z
    .locals 1

    .line 21
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Z
    .locals 0

    .line 53
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(IIIZ)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_4

    const/high16 p0, 0x40000000    # 2.0f

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    const-string p0, "Unknown size mode is set: "

    .line 278
    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p4, :cond_2

    .line 280
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    if-le p3, p2, :cond_3

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0}, Lyads/bl6;->u()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_4

    :goto_0
    return p2

    :cond_4
    return p3
.end method

.method public final a(III)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lyads/bl6;->u:I

    iput v0, p0, Lyads/bl6;->v:I

    iget-object v1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/al6;

    sub-int/2addr p1, p3

    iput p1, p0, Lyads/al6;->d:I

    return-void

    :cond_2
    invoke-virtual {p0}, Lyads/bl6;->t()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, p3

    const/4 p3, 0x7

    if-eq p2, v3, :cond_a

    const/4 v1, 0x5

    if-eq p2, v1, :cond_9

    const/16 v1, 0x10

    if-eq p2, v1, :cond_a

    const/16 v1, 0x50

    if-eq p2, v1, :cond_9

    const/high16 v1, 0x1000000

    if-eq p2, v1, :cond_7

    const/high16 v1, 0x2000000

    if-eq p2, v1, :cond_5

    const/high16 v1, 0x4000000

    if-eq p2, v1, :cond_3

    const/high16 v1, 0x10000000

    if-eq p2, v1, :cond_7

    const/high16 v1, 0x20000000

    if-eq p2, v1, :cond_5

    if-eq p2, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance p2, Lyads/al6;

    invoke-direct {p2, v0, p3}, Lyads/al6;-><init>(II)V

    int-to-float p1, p1

    iget-object p3, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    iput p1, p2, Lyads/al6;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lyads/bl6;->u:I

    iput p1, p0, Lyads/bl6;->v:I

    :goto_0
    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    if-ge v3, p1, :cond_4

    invoke-virtual {p3, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p2, Lyads/al6;

    invoke-direct {p2, v0, p3}, Lyads/al6;-><init>(II)V

    int-to-float p1, p1

    iget-object p3, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, v3, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    sub-int/2addr p3, v3

    int-to-float p3, p3

    div-float/2addr p1, p3

    :goto_1
    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    iput p1, p2, Lyads/al6;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lyads/bl6;->u:I

    :goto_2
    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_7
    new-instance p2, Lyads/al6;

    invoke-direct {p2, v0, p3}, Lyads/al6;-><init>(II)V

    int-to-float p1, p1

    iget-object p3, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    iput p1, p2, Lyads/al6;->d:I

    iput p1, p0, Lyads/bl6;->u:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lyads/bl6;->v:I

    :goto_3
    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    add-int/lit8 p3, v0, 0x2

    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_8
    :goto_4
    return-void

    :cond_9
    new-instance p2, Lyads/al6;

    invoke-direct {p2, v0, p3}, Lyads/al6;-><init>(II)V

    iput p1, p2, Lyads/al6;->d:I

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_a
    new-instance p2, Lyads/al6;

    invoke-direct {p2, v0, p3}, Lyads/al6;-><init>(II)V

    div-int/lit8 p1, p1, 0x2

    iput p1, p2, Lyads/al6;->d:I

    iget-object p1, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;IIII)V
    .locals 2

    move-object v0, p0

    .line 282
    invoke-virtual {v0}, Lyads/bl6;->m()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 283
    iget v1, v0, Lyads/bl6;->s:I

    add-int/2addr p2, v1

    .line 284
    iget v1, v0, Lyads/bl6;->q:I

    sub-int/2addr p3, v1

    .line 285
    iget v1, v0, Lyads/bl6;->t:I

    sub-int/2addr p4, v1

    .line 286
    iget v0, v0, Lyads/bl6;->r:I

    add-int/2addr p5, v0

    .line 287
    invoke-static/range {p0 .. p5}, Lyads/bl6;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;IIII)V
    .locals 2

    move-object v0, p0

    invoke-virtual {v0}, Lyads/bl6;->o()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget v1, v0, Lyads/bl6;->m:I

    add-int/2addr p2, v1

    iget v1, v0, Lyads/bl6;->k:I

    sub-int/2addr p3, v1

    iget v1, v0, Lyads/bl6;->n:I

    sub-int/2addr p4, v1

    iget v0, v0, Lyads/bl6;->l:I

    add-int/2addr p5, v0

    invoke-static/range {p0 .. p5}, Lyads/bl6;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V

    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 2

    iget-boolean p0, p0, Lyads/bl6;->h:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_3

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_5

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lyads/bl6;->c(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Lyads/bl6;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lyads/bl6;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-boolean v1, v0, Lyads/bl6;->h:Z

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_13

    new-instance v9, Lp07;

    invoke-direct {v9}, Lp07;-><init>()V

    new-instance v10, Lp07;

    invoke-direct {v10}, Lp07;-><init>()V

    iget-object v1, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyads/bl6;->k()Lyads/al6;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lyads/al6;->h:I

    iget v1, v1, Lyads/al6;->d:I

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_2
    move v2, v8

    :goto_0
    iput v2, v9, Lp07;->b:I

    iget v1, v0, Lyads/bl6;->v:I

    sub-int v5, v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v3, v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, v1, v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    :cond_3
    iget-object v1, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v8

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyads/al6;

    iget v2, v12, Lyads/al6;->c:I

    iget v3, v12, Lyads/al6;->i:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget v2, v12, Lyads/al6;->h:I

    iput v2, v10, Lp07;->b:I

    iget v3, v12, Lyads/al6;->d:I

    sub-int/2addr v2, v3

    iput v2, v9, Lp07;->b:I

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v9, Lp07;->b:I

    iget v2, v0, Lyads/bl6;->u:I

    sub-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v3, v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, v1, v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    :cond_5
    iget v1, v12, Lyads/al6;->a:I

    iget v2, v12, Lyads/al6;->c:I

    invoke-static {v0, v1, v2}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object v1

    iget v2, v1, Lw74;->b:I

    iget v13, v1, Lw74;->c:I

    iget v14, v1, Lw74;->d:I

    if-lez v14, :cond_6

    if-le v2, v13, :cond_7

    :cond_6
    if-gez v14, :cond_e

    if-gt v13, v2, :cond_e

    :cond_7
    move v15, v2

    move/from16 v16, v7

    move v1, v8

    :goto_2
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v2}, Lyads/bl6;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v17, v2, v1

    if-eqz v16, :cond_c

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v1

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lyads/bl6;->a(I)Z

    move-result v1

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_a

    iget v1, v12, Lyads/al6;->j:I

    sub-int v4, v3, v1

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v1

    sub-int v2, v4, v1

    iget v3, v9, Lp07;->b:I

    iget v5, v10, Lp07;->b:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    :cond_a
    move/from16 v16, v8

    :cond_b
    :goto_4
    move/from16 v1, v17

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->r()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->c(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v12, Lyads/al6;->k:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    sub-int v4, v3, v0

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    sub-int v2, v4, v0

    iget v3, v9, Lp07;->b:I

    iget v5, v10, Lp07;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    goto :goto_4

    :cond_d
    :goto_5
    if-eq v15, v13, :cond_f

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    goto :goto_2

    :cond_e
    move v1, v8

    :cond_f
    if-lez v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->r()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v0}, Lyads/bl6;->b(I)Z

    move-result v0

    goto :goto_6

    :cond_10
    invoke-static {v0}, Lyads/bl6;->a(I)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, v12, Lyads/al6;->j:I

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    sub-int v2, v4, v0

    iget v3, v9, Lp07;->b:I

    iget v5, v10, Lp07;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    :goto_7
    move v1, v7

    goto/16 :goto_1

    :cond_12
    iget v1, v10, Lp07;->b:I

    if-lez v1, :cond_23

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, v10, Lp07;->b:I

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Lyads/bl6;->v:I

    add-int v5, v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v3, v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, v1, v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    return-void

    :cond_13
    new-instance v9, Lp07;

    invoke-direct {v9}, Lp07;-><init>()V

    new-instance v10, Lp07;

    invoke-direct {v10}, Lp07;-><init>()V

    iget-object v1, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v1}, Lyads/bl6;->a(I)Z

    move-result v1

    goto :goto_8

    :cond_14
    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lyads/bl6;->k()Lyads/al6;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v2, v1, Lyads/al6;->g:I

    iget v1, v1, Lyads/al6;->d:I

    sub-int/2addr v2, v1

    goto :goto_9

    :cond_15
    move v2, v8

    :goto_9
    iput v2, v9, Lp07;->b:I

    iget v1, v0, Lyads/bl6;->v:I

    sub-int v4, v2, v1

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v2, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    :cond_16
    iget-object v1, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v8, v1}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object v1

    invoke-virtual {v1}, Lw74;->b()Lx74;

    move-result-object v11

    move v1, v8

    :goto_a
    iget-boolean v2, v11, Lx74;->d:Z

    if-eqz v2, :cond_21

    invoke-virtual {v11}, Lx74;->nextInt()I

    move-result v2

    iget-object v3, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyads/al6;

    iget v2, v12, Lyads/al6;->c:I

    iget v3, v12, Lyads/al6;->i:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_17

    goto :goto_a

    :cond_17
    iget v2, v12, Lyads/al6;->g:I

    iput v2, v10, Lp07;->b:I

    iget v3, v12, Lyads/al6;->d:I

    sub-int/2addr v2, v3

    iput v2, v9, Lp07;->b:I

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->c(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v9, Lp07;->b:I

    iget v2, v0, Lyads/bl6;->u:I

    sub-int v4, v1, v2

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v2, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    :cond_18
    invoke-virtual {v0}, Lyads/bl6;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_19

    move v13, v7

    goto :goto_b

    :cond_19
    move v13, v8

    :goto_b
    iget v14, v12, Lyads/al6;->c:I

    move/from16 v16, v7

    move v1, v8

    move v15, v1

    :goto_c
    if-ge v15, v14, :cond_1f

    iget v2, v12, Lyads/al6;->a:I

    add-int/2addr v2, v15

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0, v2}, Lyads/bl6;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v17, v2, v1

    if-eqz v16, :cond_1d

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v12, Lyads/al6;->j:I

    sub-int v5, v3, v1

    iget v2, v9, Lp07;->b:I

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v1

    sub-int v3, v5, v1

    iget v4, v10, Lp07;->b:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    :cond_1b
    move/from16 v16, v8

    :cond_1c
    :goto_d
    move/from16 v1, v17

    goto :goto_e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->r()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, v12, Lyads/al6;->k:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    sub-int v5, v3, v0

    iget v2, v9, Lp07;->b:I

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    sub-int v3, v5, v0

    iget v4, v10, Lp07;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    goto :goto_d

    :cond_1e
    :goto_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_1f
    if-lez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->r()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, v12, Lyads/al6;->j:I

    add-int v5, v0, v1

    iget v2, v9, Lp07;->b:I

    invoke-virtual/range {p0 .. p0}, Lyads/bl6;->p()I

    move-result v0

    sub-int v3, v5, v0

    iget v4, v10, Lp07;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->b(Landroid/graphics/Canvas;IIII)V

    goto :goto_f

    :cond_20
    move-object/from16 v0, p0

    :goto_f
    move v1, v13

    goto/16 :goto_a

    :cond_21
    iget v1, v10, Lp07;->b:I

    if-lez v1, :cond_23

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    goto :goto_10

    :cond_22
    invoke-static {v1}, Lyads/bl6;->a(I)Z

    move-result v1

    :goto_10
    if-eqz v1, :cond_23

    iget v1, v10, Lp07;->b:I

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Lyads/bl6;->v:I

    add-int v4, v2, v1

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    sub-int v2, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/bl6;->a(Landroid/graphics/Canvas;IIII)V

    :cond_23
    :goto_11
    return-void
.end method

.method public final getBaseline()I
    .locals 1

    invoke-virtual {p0}, Lyads/bl6;->k()Lyads/al6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lyads/al6;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final j()F
    .locals 2

    iget-object p0, p0, Lyads/bl6;->y:Lyads/hp0;

    sget-object v0, Lyads/bl6;->z:[Lze4;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final k()Lyads/al6;
    .locals 3

    iget-boolean v0, p0, Lyads/bl6;->h:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/al6;

    iget v2, v1, Lyads/al6;->c:I

    iget v1, v1, Lyads/al6;->i:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/al6;

    iget v2, v1, Lyads/al6;->c:I

    iget v1, v1, Lyads/al6;->i:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lyads/al6;

    return-object v0
.end method

.method public final l()I
    .locals 3

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/al6;

    iget v0, v0, Lyads/al6;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/al6;

    iget v1, v1, Lyads/al6;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object p0, p0, Lyads/bl6;->g:Lyads/hp0;

    sget-object v0, Lyads/bl6;->z:[Lze4;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final n()I
    .locals 2

    iget-boolean v0, p0, Lyads/bl6;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/bl6;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    iget v0, p0, Lyads/bl6;->q:I

    add-int/2addr v1, v0

    iget p0, p0, Lyads/bl6;->r:I

    :goto_0
    add-int/2addr v1, p0

    return v1

    :cond_1
    invoke-virtual {p0}, Lyads/bl6;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :cond_2
    iget v0, p0, Lyads/bl6;->s:I

    add-int/2addr v1, v0

    iget p0, p0, Lyads/bl6;->t:I

    goto :goto_0
.end method

.method public final o()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object p0, p0, Lyads/bl6;->f:Lyads/hp0;

    sget-object v0, Lyads/bl6;->z:[Lze4;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lyads/bl6;->h:Z

    const v3, 0x7800007

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v6

    invoke-static {v6}, Lyads/bl6;->b(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v6, v1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    iget v7, v0, Lyads/yh2;->a:I

    and-int/2addr v3, v7

    invoke-static {v3, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    iget-object v3, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/al6;

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v9

    invoke-static {v9}, Lyads/bl6;->a(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v9

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lyads/bl6;->s()I

    move-result v9

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    int-to-float v9, v9

    add-float/2addr v10, v9

    sub-int v9, p4, p2

    iget v11, v8, Lyads/al6;->b:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget-object v11, v0, Lyads/bl6;->w:Lyads/xh2;

    iget v12, v8, Lyads/al6;->c:I

    iget v13, v8, Lyads/al6;->i:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v1, v9, v12}, Lyads/xh2;->a(IFI)V

    iget v9, v11, Lyads/xh2;->a:F

    add-float/2addr v10, v9

    iget v9, v11, Lyads/xh2;->b:F

    iput v9, v8, Lyads/al6;->k:F

    iget v9, v11, Lyads/xh2;->c:I

    iput v9, v8, Lyads/al6;->j:I

    iget v9, v8, Lyads/al6;->c:I

    iget v11, v8, Lyads/al6;->i:I

    sub-int/2addr v9, v11

    if-lez v9, :cond_5

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v7

    invoke-static {v7}, Lyads/bl6;->c(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v7

    goto :goto_3

    :cond_3
    iget v7, v0, Lyads/bl6;->p:I

    :goto_3
    add-int/2addr v6, v7

    :cond_4
    const/4 v7, 0x1

    :cond_5
    iget v9, v8, Lyads/al6;->a:I

    iget v11, v8, Lyads/al6;->c:I

    invoke-static {v0, v9, v11}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object v9

    iget v11, v9, Lw74;->b:I

    iget v12, v9, Lw74;->c:I

    iget v9, v9, Lw74;->d:I

    if-lez v9, :cond_6

    if-le v11, v12, :cond_7

    :cond_6
    if-gez v9, :cond_10

    if-gt v12, v11, :cond_10

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v0, v14}, Lyads/bl6;->d(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    const p1, 0x70000070

    goto/16 :goto_7

    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v15, Lyads/ro1;

    const p1, 0x70000070

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr v10, v2

    if-eqz v13, :cond_b

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v2

    invoke-static {v2}, Lyads/bl6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v2

    goto :goto_5

    :cond_a
    iget v2, v0, Lyads/bl6;->o:I

    :goto_5
    int-to-float v2, v2

    add-float/2addr v10, v2

    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v13, v2, Lyads/ro1;->a:I

    and-int v13, v13, p1

    const/16 v4, 0x10

    if-eq v13, v4, :cond_e

    const/16 v4, 0x50

    if-eq v13, v4, :cond_d

    iget-boolean v4, v2, Lyads/ro1;->b:Z

    if-eqz v4, :cond_c

    iget v4, v8, Lyads/al6;->e:I

    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v13

    sub-int/2addr v4, v13

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_6

    :cond_c
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6

    :cond_d
    iget v4, v8, Lyads/al6;->d:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v4, v13

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, v4, v2

    goto :goto_6

    :cond_e
    iget v4, v8, Lyads/al6;->d:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v4, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v2

    div-int/lit8 v2, v4, 0x2

    :goto_6
    add-int/2addr v2, v6

    invoke-static {v10}, Lw65;->b(F)I

    move-result v4

    invoke-static {v10}, Lw65;->b(F)I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v13, v17, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v5, v17, v2

    invoke-virtual {v14, v4, v2, v13, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v8, Lyads/al6;->k:F

    add-float/2addr v2, v4

    add-float/2addr v2, v10

    move v10, v2

    const/4 v13, 0x1

    goto :goto_8

    :goto_7
    invoke-virtual {v0, v14}, Lyads/bl6;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v2, v2, v2}, Landroid/view/View;->layout(IIII)V

    :cond_f
    :goto_8
    if-eq v11, v12, :cond_11

    add-int/2addr v11, v9

    goto/16 :goto_4

    :cond_10
    const p1, 0x70000070

    :cond_11
    iget v2, v8, Lyads/al6;->d:I

    add-int/2addr v6, v2

    invoke-static {v10}, Lw65;->b(F)I

    move-result v2

    iput v2, v8, Lyads/al6;->g:I

    iput v6, v8, Lyads/al6;->h:I

    goto/16 :goto_1

    :cond_12
    const p1, 0x70000070

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v1

    invoke-static {v1}, Lyads/bl6;->b(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object v1

    invoke-virtual {v1}, Lw74;->b()Lx74;

    move-result-object v1

    move v4, v2

    const/4 v2, 0x0

    :goto_a
    iget-boolean v5, v1, Lx74;->d:Z

    if-eqz v5, :cond_20

    invoke-virtual {v1}, Lx74;->nextInt()I

    move-result v5

    iget-object v6, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/al6;

    sub-int v6, p5, p3

    iget v7, v5, Lyads/al6;->b:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Lyads/bl6;->s()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, v0, Lyads/bl6;->w:Lyads/xh2;

    iget v9, v0, Lyads/yh2;->a:I

    and-int v9, v9, p1

    iget v10, v5, Lyads/al6;->c:I

    iget v11, v5, Lyads/al6;->i:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v6, v10}, Lyads/xh2;->a(IFI)V

    iget v6, v8, Lyads/xh2;->a:F

    add-float/2addr v7, v6

    iget v6, v8, Lyads/xh2;->b:F

    iput v6, v5, Lyads/al6;->k:F

    iget v6, v8, Lyads/xh2;->c:I

    iput v6, v5, Lyads/al6;->j:I

    iget v6, v5, Lyads/al6;->c:I

    iget v8, v5, Lyads/al6;->i:I

    sub-int/2addr v6, v8

    if-lez v6, :cond_17

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v2

    invoke-static {v2}, Lyads/bl6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v2

    goto :goto_b

    :cond_15
    iget v2, v0, Lyads/bl6;->p:I

    :goto_b
    add-int/2addr v4, v2

    :cond_16
    const/4 v2, 0x1

    :cond_17
    iget v6, v5, Lyads/al6;->c:I

    move v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v7, v6, :cond_1f

    iget v10, v5, Lyads/al6;->a:I

    add-int/2addr v10, v7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v0, v10}, Lyads/bl6;->d(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_19

    :cond_18
    const/4 v14, 0x1

    goto/16 :goto_f

    :cond_19
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v12, v12

    add-float/2addr v9, v12

    if-eqz v8, :cond_1b

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v8

    invoke-static {v8}, Lyads/bl6;->c(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v8

    goto :goto_d

    :cond_1a
    iget v8, v0, Lyads/bl6;->o:I

    :goto_d
    int-to-float v8, v8

    add-float/2addr v9, v8

    :cond_1b
    iget v8, v5, Lyads/al6;->d:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Lyads/ro1;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v13

    iget v14, v12, Lyads/ro1;->a:I

    and-int/2addr v14, v3

    invoke-static {v14, v13}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1d

    const/4 v15, 0x5

    if-eq v13, v15, :cond_1c

    iget v8, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_e

    :cond_1c
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v8, v13

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v12

    goto :goto_e

    :cond_1d
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v8, v13

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v13

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v12

    div-int/lit8 v8, v8, 0x2

    :goto_e
    add-int/2addr v8, v4

    invoke-static {v9}, Lw65;->b(F)I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v8

    invoke-static {v9}, Lw65;->b(F)I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v15, v16, v15

    invoke-virtual {v10, v8, v12, v13, v15}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    iget v10, v5, Lyads/al6;->k:F

    add-float/2addr v8, v10

    add-float/2addr v8, v9

    move v9, v8

    move v8, v14

    :cond_1e
    const/4 v11, 0x0

    goto :goto_10

    :goto_f
    invoke-virtual {v0, v10}, Lyads/bl6;->c(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/view/View;->layout(IIII)V

    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    :cond_1f
    const/4 v11, 0x0

    const/4 v14, 0x1

    iget v6, v5, Lyads/al6;->d:I

    add-int/2addr v4, v6

    iput v4, v5, Lyads/al6;->g:I

    invoke-static {v9}, Lw65;->b(F)I

    move-result v6

    iput v6, v5, Lyads/al6;->h:I

    goto/16 :goto_a

    :cond_20
    return-void
.end method

.method public final onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, v0, Lyads/bl6;->j:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v0}, Lyads/bl6;->j()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v7, :cond_1

    int-to-float v5, v4

    invoke-virtual {v0}, Lyads/bl6;->j()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Lw65;->b(F)I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move v9, v5

    move v5, v8

    move/from16 v8, p2

    :goto_1
    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v10

    invoke-static {v10}, Lyads/bl6;->b(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v10

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    invoke-virtual {v0}, Lyads/bl6;->q()I

    move-result v11

    invoke-static {v11}, Lyads/bl6;->a(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Lyads/bl6;->n()I

    move-result v11

    goto :goto_3

    :cond_3
    move v11, v2

    :goto_3
    add-int/2addr v11, v10

    iput v11, v0, Lyads/bl6;->x:I

    iget-boolean v10, v0, Lyads/bl6;->h:Z

    if-eqz v10, :cond_4

    move v10, v1

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {v0}, Lyads/bl6;->s()I

    move-result v12

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v13

    invoke-static {v13}, Lyads/bl6;->a(I)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v13

    goto :goto_5

    :cond_5
    move v13, v2

    :goto_5
    add-int/2addr v13, v12

    iget-boolean v12, v0, Lyads/bl6;->h:Z

    if-eqz v12, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    :goto_6
    add-int/2addr v14, v12

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    goto :goto_6

    :goto_7
    add-int/2addr v13, v14

    new-instance v12, Lyads/al6;

    const/4 v14, 0x5

    invoke-direct {v12, v13, v14}, Lyads/al6;-><init>(II)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v14

    invoke-interface {v14}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/high16 v16, -0x80000000

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    move/from16 v18, v6

    const/4 v6, 0x1

    if-eqz v17, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v19, v2, 0x1

    if-ltz v2, :cond_18

    move-object/from16 v15, v17

    check-cast v15, Landroid/view/View;

    invoke-virtual {v0, v15}, Lyads/bl6;->d(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    iget v15, v12, Lyads/al6;->i:I

    add-int/2addr v15, v6

    iput v15, v12, Lyads/al6;->i:I

    iget v15, v12, Lyads/al6;->c:I

    add-int/2addr v15, v6

    iput v15, v12, Lyads/al6;->c:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v6

    if-ne v2, v15, :cond_8

    iget v2, v12, Lyads/al6;->c:I

    iget v6, v12, Lyads/al6;->i:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_8

    iget-object v2, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v12, Lyads/al6;->e:I

    if-lez v2, :cond_7

    iget v6, v12, Lyads/al6;->d:I

    iget v15, v12, Lyads/al6;->f:I

    add-int/2addr v2, v15

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v12, Lyads/al6;->d:I

    :cond_7
    iget v2, v0, Lyads/bl6;->x:I

    iget v6, v12, Lyads/al6;->d:I

    add-int/2addr v2, v6

    iput v2, v0, Lyads/bl6;->x:I

    :cond_8
    move/from16 v21, v5

    move/from16 v20, v9

    move/from16 v22, v11

    move-object/from16 v23, v14

    goto/16 :goto_12

    :cond_9
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, v17

    check-cast v7, Lyads/ro1;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    add-int v20, v20, v17

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v5

    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v5

    add-int v6, v6, v20

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    add-int v20, v20, v5

    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v5

    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v5, v22, v5

    add-int v5, v5, v20

    move/from16 v20, v5

    iget-boolean v5, v0, Lyads/bl6;->h:Z

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lyads/bl6;->s()I

    move-result v5

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lyads/bl6;->a(I)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v22

    goto :goto_9

    :cond_a
    const/16 v22, 0x0

    :goto_9
    add-int v22, v22, v5

    add-int v22, v22, v6

    iget v5, v0, Lyads/bl6;->x:I

    add-int v5, v20, v5

    :goto_a
    move/from16 v20, v9

    move/from16 v6, v22

    goto :goto_c

    :cond_b
    iget v5, v0, Lyads/bl6;->x:I

    add-int v22, v6, v5

    invoke-virtual {v0}, Lyads/bl6;->s()I

    move-result v5

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v6

    invoke-static {v6}, Lyads/bl6;->a(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v6

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    add-int/2addr v6, v5

    add-int v5, v6, v20

    goto :goto_a

    :goto_c
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v22, v11

    invoke-virtual {v15}, Landroid/view/View;->getMinimumWidth()I

    move-result v11

    move-object/from16 v23, v14

    iget v14, v7, Lyads/ro1;->h:I

    invoke-static {v1, v6, v9, v11, v14}, Lyads/wh2;->a(IIIII)I

    move-result v6

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v15}, Landroid/view/View;->getMinimumHeight()I

    move-result v11

    iget v14, v7, Lyads/ro1;->g:I

    invoke-static {v8, v5, v9, v11, v14}, Lyads/wh2;->a(IIIII)I

    move-result v5

    invoke-virtual {v15, v6, v5}, Landroid/view/View;->measure(II)V

    iget v5, v0, Lyads/bl6;->j:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    iput v5, v0, Lyads/bl6;->j:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    add-int/2addr v6, v5

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    add-int/2addr v9, v5

    iget-boolean v5, v0, Lyads/bl6;->h:Z

    if-eqz v5, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v24, v9

    move v9, v6

    move/from16 v6, v24

    :goto_d
    iget v5, v12, Lyads/al6;->b:I

    iget v11, v12, Lyads/al6;->c:I

    if-eqz v11, :cond_f

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v11

    invoke-static {v11}, Lyads/bl6;->c(I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v11

    goto :goto_e

    :cond_e
    iget v11, v0, Lyads/bl6;->o:I

    goto :goto_e

    :cond_f
    const/4 v11, 0x0

    :goto_e
    add-int/2addr v5, v6

    add-int/2addr v5, v11

    if-eqz v22, :cond_12

    if-ge v10, v5, :cond_12

    iget v5, v12, Lyads/al6;->c:I

    iget v11, v12, Lyads/al6;->i:I

    sub-int/2addr v5, v11

    if-lez v5, :cond_11

    iget-object v5, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v12, Lyads/al6;->e:I

    if-lez v5, :cond_10

    iget v11, v12, Lyads/al6;->d:I

    iget v14, v12, Lyads/al6;->f:I

    add-int/2addr v5, v14

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v12, Lyads/al6;->d:I

    :cond_10
    iget v5, v0, Lyads/bl6;->x:I

    iget v11, v12, Lyads/al6;->d:I

    add-int/2addr v5, v11

    iput v5, v0, Lyads/bl6;->x:I

    :cond_11
    new-instance v12, Lyads/al6;

    const/4 v5, 0x1

    invoke-direct {v12, v2, v13, v5}, Lyads/al6;-><init>(III)V

    const/high16 v5, -0x80000000

    goto :goto_10

    :cond_12
    iget v5, v12, Lyads/al6;->c:I

    if-lez v5, :cond_14

    iget v5, v12, Lyads/al6;->b:I

    invoke-virtual {v0}, Lyads/bl6;->r()I

    move-result v11

    invoke-static {v11}, Lyads/bl6;->c(I)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v0}, Lyads/bl6;->p()I

    move-result v11

    goto :goto_f

    :cond_13
    iget v11, v0, Lyads/bl6;->o:I

    :goto_f
    add-int/2addr v11, v5

    iput v11, v12, Lyads/al6;->b:I

    :cond_14
    iget v5, v12, Lyads/al6;->c:I

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v12, Lyads/al6;->c:I

    move/from16 v5, v16

    :goto_10
    iget-boolean v11, v0, Lyads/bl6;->h:Z

    if-eqz v11, :cond_15

    iget-boolean v11, v7, Lyads/ro1;->b:Z

    if-eqz v11, :cond_15

    iget v11, v12, Lyads/al6;->e:I

    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v14

    move/from16 v16, v6

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v6

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v12, Lyads/al6;->e:I

    iget v6, v12, Lyads/al6;->f:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v7

    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v7

    sub-int/2addr v11, v7

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v12, Lyads/al6;->f:I

    goto :goto_11

    :cond_15
    move/from16 v16, v6

    :goto_11
    iget v6, v12, Lyads/al6;->b:I

    add-int v6, v6, v16

    iput v6, v12, Lyads/al6;->b:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v12, Lyads/al6;->d:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v12, Lyads/al6;->d:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_17

    iget v2, v12, Lyads/al6;->c:I

    iget v6, v12, Lyads/al6;->i:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_17

    iget-object v2, v0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v12, Lyads/al6;->e:I

    if-lez v2, :cond_16

    iget v6, v12, Lyads/al6;->d:I

    iget v7, v12, Lyads/al6;->f:I

    add-int/2addr v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v12, Lyads/al6;->d:I

    :cond_16
    iget v2, v0, Lyads/bl6;->x:I

    iget v6, v12, Lyads/al6;->d:I

    add-int/2addr v2, v6

    iput v2, v0, Lyads/bl6;->x:I

    :cond_17
    move/from16 v16, v5

    :goto_12
    move/from16 v6, v18

    move/from16 v2, v19

    move/from16 v9, v20

    move/from16 v5, v21

    move/from16 v11, v22

    move-object/from16 v14, v23

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_8

    :cond_18
    invoke-static {}, Lu96;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_19
    move/from16 v21, v5

    move/from16 v20, v9

    iget-boolean v2, v0, Lyads/bl6;->h:Z

    iget v5, v0, Lyads/yh2;->a:I

    if-eqz v2, :cond_1a

    const v2, 0x70000070

    and-int/2addr v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v8, v2, v6}, Lyads/bl6;->a(III)V

    goto :goto_13

    :cond_1a
    const v2, 0x7800007

    and-int/2addr v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v1, v2, v6}, Lyads/bl6;->a(III)V

    :goto_13
    iget-boolean v2, v0, Lyads/bl6;->h:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lyads/bl6;->l()I

    move-result v2

    goto :goto_14

    :cond_1b
    invoke-virtual {v0}, Lyads/bl6;->t()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v2, v6

    :goto_14
    iget-boolean v5, v0, Lyads/bl6;->h:Z

    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Lyads/bl6;->t()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    goto :goto_15

    :cond_1c
    invoke-virtual {v0}, Lyads/bl6;->l()I

    move-result v7

    :goto_15
    iget v5, v0, Lyads/bl6;->j:I

    if-nez v3, :cond_1d

    goto :goto_16

    :cond_1d
    if-ge v4, v2, :cond_1e

    const/high16 v6, 0x1000000

    invoke-static {v5, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    :cond_1e
    :goto_16
    iput v5, v0, Lyads/bl6;->j:I

    iget-boolean v5, v0, Lyads/bl6;->h:Z

    const/16 v17, 0x1

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v3, v4, v2, v5}, Lyads/bl6;->a(IIIZ)I

    move-result v2

    iget v4, v0, Lyads/bl6;->j:I

    invoke-static {v2, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    iget-boolean v2, v0, Lyads/bl6;->h:Z

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lyads/bl6;->j()F

    move-result v2

    cmpg-float v2, v2, v18

    if-nez v2, :cond_1f

    goto :goto_17

    :cond_1f
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v3, v2, :cond_20

    const v3, 0xffffff

    and-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0}, Lyads/bl6;->j()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Lw65;->b(F)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_18

    :cond_20
    :goto_17
    move/from16 v2, v20

    move/from16 v5, v21

    :goto_18
    iget v3, v0, Lyads/bl6;->j:I

    if-nez v2, :cond_21

    goto :goto_19

    :cond_21
    if-ge v5, v7, :cond_22

    const/16 v4, 0x100

    invoke-static {v3, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    :cond_22
    :goto_19
    iput v3, v0, Lyads/bl6;->j:I

    iget-boolean v3, v0, Lyads/bl6;->h:Z

    invoke-virtual {v0, v2, v5, v7, v3}, Lyads/bl6;->a(IIIZ)I

    move-result v2

    iget v3, v0, Lyads/bl6;->j:I

    invoke-static {v2, v8, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final p()I
    .locals 2

    iget-boolean v0, p0, Lyads/bl6;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/bl6;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :cond_0
    iget v0, p0, Lyads/bl6;->m:I

    add-int/2addr v1, v0

    iget p0, p0, Lyads/bl6;->n:I

    :goto_0
    add-int/2addr v1, p0

    return v1

    :cond_1
    invoke-virtual {p0}, Lyads/bl6;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_2
    iget v0, p0, Lyads/bl6;->k:I

    add-int/2addr v1, v0

    iget p0, p0, Lyads/bl6;->l:I

    goto :goto_0
.end method

.method public final q()I
    .locals 2

    iget-object p0, p0, Lyads/bl6;->e:Lyads/hp0;

    sget-object v0, Lyads/bl6;->z:[Lze4;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final r()I
    .locals 2

    iget-object p0, p0, Lyads/bl6;->d:Lyads/hp0;

    sget-object v0, Lyads/bl6;->z:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final s()I
    .locals 1

    invoke-virtual {p0}, Lyads/bl6;->r()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/bl6;->p()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lyads/bl6;->y:Lyads/hp0;

    sget-object v1, Lyads/bl6;->z:[Lze4;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setItemSpacing(I)V
    .locals 1

    iget v0, p0, Lyads/bl6;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lyads/bl6;->o:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setLineSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lyads/bl6;->g:Lyads/hp0;

    sget-object v1, Lyads/bl6;->z:[Lze4;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLineSeparatorMargins(IIII)V
    .locals 0

    iput p1, p0, Lyads/bl6;->s:I

    iput p3, p0, Lyads/bl6;->t:I

    iput p2, p0, Lyads/bl6;->q:I

    iput p4, p0, Lyads/bl6;->r:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setLineSpacing(I)V
    .locals 1

    iget v0, p0, Lyads/bl6;->p:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lyads/bl6;->p:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lyads/bl6;->f:Lyads/hp0;

    sget-object v1, Lyads/bl6;->z:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSeparatorMargins(IIII)V
    .locals 0

    iput p1, p0, Lyads/bl6;->m:I

    iput p3, p0, Lyads/bl6;->n:I

    iput p2, p0, Lyads/bl6;->k:I

    iput p4, p0, Lyads/bl6;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setShowLineSeparators(I)V
    .locals 3

    iget-object v0, p0, Lyads/bl6;->e:Lyads/hp0;

    sget-object v1, Lyads/bl6;->z:[Lze4;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowSeparators(I)V
    .locals 3

    iget-object v0, p0, Lyads/bl6;->d:Lyads/hp0;

    sget-object v1, Lyads/bl6;->z:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setWrapDirection(I)V
    .locals 1

    iget v0, p0, Lyads/bl6;->c:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lyads/bl6;->c:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid value for the wrap direction is set: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lyads/bl6;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final t()I
    .locals 4

    iget-object v0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/al6;

    iget v3, v3, Lyads/al6;->d:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/bl6;->q()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/bl6;->n()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lyads/bl6;->q()I

    move-result v3

    invoke-static {v3}, Lyads/bl6;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lyads/bl6;->n()I

    move-result v1

    :cond_2
    add-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lyads/bl6;->q()I

    move-result v0

    invoke-static {v0}, Lyads/bl6;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyads/bl6;->n()I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lyads/bl6;->p:I

    :goto_2
    invoke-virtual {p0}, Lyads/bl6;->u()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0
.end method

.method public final u()I
    .locals 3

    iget-object p0, p0, Lyads/bl6;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/al6;

    iget v2, v1, Lyads/al6;->c:I

    iget v1, v1, Lyads/al6;->i:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->n()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return v0
.end method
