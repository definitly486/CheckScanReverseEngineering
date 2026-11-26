.class public final Lcom/skydoves/balloon/radius/RadiusLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/balloon/radius/RadiusLayout$a;
    }
.end annotation


# static fields
.field public static final synthetic p:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ln36;

.field public l:F

.field public m:F

.field public n:F

.field public o:Lzr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltg5;

    const-class v1, Lcom/skydoves/balloon/radius/RadiusLayout;

    const-string v2, "radius"

    const-string v3, "getRadius()F"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/skydoves/balloon/radius/RadiusLayout;->p:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/skydoves/balloon/radius/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/skydoves/balloon/radius/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->b:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->d:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lu96;->p(Landroid/view/View;Ljava/lang/Object;)Ln36;

    move-result-object p1

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->k:Ln36;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    sget-object p1, Lzr;->BOTTOM:Lzr;

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/skydoves/balloon/radius/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getHalfStroke()F
    .locals 2

    iget-object p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->l:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v4, Lzr;->START:Lzr;

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v5, Lzr;->TOP:Lzr;

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v6, Lzr;->END:Lzr;

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v6

    sub-float/2addr v5, v6

    :goto_2
    iget-object v6, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v7, Lzr;->BOTTOM:Lzr;

    if-ne v6, v7, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v6

    sub-float v6, v2, v6

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v7, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v9

    add-float/2addr v7, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v10, v8

    sub-float/2addr v9, v10

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v2, v7, v9}, Lkx6;->d(FFF)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v9, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    mul-float/2addr v7, v9

    iget v9, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v9, v8

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v11, v8

    sub-float/2addr v10, v11

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v7, v9, v10}, Lkx6;->d(FFF)F

    move-result v7

    iget-object v9, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v10, Lcom/skydoves/balloon/radius/RadiusLayout$a;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    const/4 v2, 0x3

    if-eq v9, v2, :cond_6

    const/4 v2, 0x4

    if-ne v9, v2, :cond_5

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    sub-float v2, v5, v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v5, v4, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v2, v8

    sub-float v2, v7, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v1, v8

    add-float/2addr v1, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sub-float v1, v6, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sub-float v1, v5, v1

    invoke-virtual {v0, v5, v6, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sub-float v1, v6, v1

    invoke-virtual {v0, v3, v6, v3, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_6
    sub-float v1, v3, v1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    sub-float v2, v5, v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v5, v4, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    sub-float v2, v6, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    sub-float v2, v5, v2

    invoke-virtual {v0, v5, v6, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v2

    sub-float v2, v6, v2

    invoke-virtual {v0, v3, v6, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v1, v8

    sub-float/2addr v7, v1

    invoke-virtual {v0, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_4

    :cond_7
    add-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    add-float/2addr v7, v3

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v5, v7

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v5, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v6, v7

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v5, v7

    invoke-virtual {v0, v5, v6, v7, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v5, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v5, v8

    add-float/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v1, v8

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sub-float v1, v6, v1

    invoke-virtual {v0, v3, v6, v3, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    :cond_8
    sub-float v1, v4, v1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    add-float/2addr v7, v3

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v5, v7

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v6, v7

    invoke-virtual {v0, v5, v6, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v7

    sub-float v7, v5, v7

    invoke-virtual {v0, v5, v4, v7, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v5, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v5, v8

    add-float/2addr v5, v2

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    div-float/2addr v1, v8

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v4, v3, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sub-float v1, v6, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v3, v6, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_5
    return-void
.end method

.method public final b()V
    .locals 8

    iget-boolean v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->l:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-direct {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getHalfStroke()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->g:I

    iget-object v2, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    sget-object v3, Lzr;->START:Lzr;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    float-to-int v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    add-int/2addr v1, v3

    iget v3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->h:I

    sget-object v5, Lzr;->TOP:Lzr;

    if-ne v2, v5, :cond_2

    float-to-int v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    add-int/2addr v3, v5

    iget v5, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->i:I

    sget-object v6, Lzr;->END:Lzr;

    if-ne v2, v6, :cond_3

    float-to-int v6, v0

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    add-int/2addr v5, v6

    iget v6, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->j:I

    sget-object v7, Lzr;->BOTTOM:Lzr;

    if-ne v2, v7, :cond_4

    float-to-int v4, v0

    :cond_4
    add-int/2addr v6, v4

    invoke-super {p0, v1, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    iget-object v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    invoke-super {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_3
    move-object v2, p1

    invoke-super {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getArrowHeight()F
    .locals 0

    iget p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->l:F

    return p0
.end method

.method public final getArrowOrientation()Lzr;
    .locals 0

    iget-object p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    return-object p0
.end method

.method public final getArrowPositionRatio()F
    .locals 0

    iget p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    return p0
.end method

.method public final getArrowWidth()F
    .locals 0

    iget p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    return p0
.end method

.method public final getCustomShapeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getDrawCustomShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    return p0
.end method

.method public final getRadius()F
    .locals 2

    sget-object v0, Lcom/skydoves/balloon/radius/RadiusLayout;->p:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->k:Ln36;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ln36;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    new-instance p4, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-direct {p4, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->getRadius()F

    move-result v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-boolean p3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->a()V

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->b()V

    iget-object p3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setArrowHeight(F)V
    .locals 1

    iget v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->l:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->l:F

    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->a()V

    :cond_1
    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->b()V

    :cond_2
    return-void
.end method

.method public final setArrowOrientation(Lzr;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->o:Lzr;

    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->a()V

    :cond_0
    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->b()V

    :cond_1
    return-void
.end method

.method public final setArrowPositionRatio(F)V
    .locals 1

    iget v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->n:F

    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->a()V

    :cond_1
    return-void
.end method

.method public final setArrowWidth(F)V
    .locals 1

    iget v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->m:F

    iget-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->a()V

    :cond_1
    return-void
.end method

.method public final setCustomShapeBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setDrawCustomShape(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iput p1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->g:I

    iput p2, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->h:I

    iput p3, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->i:I

    iput p4, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->j:I

    iget-boolean v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/skydoves/balloon/radius/RadiusLayout;->b()V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final setRadius(F)V
    .locals 2

    sget-object v0, Lcom/skydoves/balloon/radius/RadiusLayout;->p:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v1, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->k:Ln36;

    invoke-virtual {v1, p0, v0, p1}, Ln36;->a(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStroke(FI)V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/skydoves/balloon/radius/RadiusLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
