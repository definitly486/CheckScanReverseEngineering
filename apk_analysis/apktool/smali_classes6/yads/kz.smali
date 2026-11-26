.class public final Lyads/kz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gl5;


# instance fields
.field public final a:Lyads/cg3;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lyads/cg3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kz;->a:Lyads/cg3;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyads/kz;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/kz;->c:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;FFLyads/yf3;IFI)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lyads/wf3;

    iget-object p6, p0, Lyads/kz;->b:Landroid/graphics/Paint;

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lyads/kz;->c:Landroid/graphics/RectF;

    iget p6, p4, Lyads/wf3;->a:F

    sub-float p7, p2, p6

    iput p7, p5, Landroid/graphics/RectF;->left:F

    sub-float p7, p3, p6

    iput p7, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p6

    iput p2, p5, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, p6

    iput p3, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lyads/kz;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget p4, p4, Lyads/wf3;->a:F

    iget-object p0, p0, Lyads/kz;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lyads/kz;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lyads/kz;->a:Lyads/cg3;

    .line 47
    iget-object v1, v1, Lyads/cg3;->b:Lyads/bg3;

    .line 48
    invoke-virtual {v1}, Lyads/bg3;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    iget-object p0, p0, Lyads/kz;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
