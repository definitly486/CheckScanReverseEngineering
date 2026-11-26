.class public final Lyj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final b:Ld15;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ld15;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsq5;->a:Landroid/graphics/Rect;

    iput-object v0, p0, Lyj0;->c:Landroid/graphics/Rect;

    sget-object v0, Lsq5;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lyj0;->d:Landroid/graphics/Paint;

    iput-object p1, p0, Lyj0;->b:Ld15;

    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    iget-object p6, p0, Lyj0;->b:Ld15;

    iget p8, p6, Ld15;->b:I

    if-nez p8, :cond_0

    iget p8, p6, Ld15;->a:I

    int-to-float p8, p8

    const/high16 p9, 0x3e800000    # 0.25f

    mul-float/2addr p8, p9

    const/high16 p9, 0x3f000000    # 0.5f

    add-float/2addr p8, p9

    float-to-int p8, p8

    :cond_0
    iget-object p9, p0, Lyj0;->d:Landroid/graphics/Paint;

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    const/16 p6, 0x19

    invoke-static {p2, p6}, Ly14;->o(II)I

    move-result p2

    sget-object p6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p9, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/2addr p4, p8

    add-int/2addr p3, p4

    add-int/2addr p4, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p0, p0, Lyj0;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p5, p3, p7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, p0, p9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    iget-object p0, p0, Lyj0;->b:Ld15;

    iget p0, p0, Ld15;->a:I

    return p0
.end method
