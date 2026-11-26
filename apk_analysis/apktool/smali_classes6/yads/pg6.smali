.class public final Lyads/pg6;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lyads/og6;

.field public b:I

.field public c:Landroid/graphics/Rect;

.field public d:Z

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/pg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/pg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lyads/pg6;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lyads/pg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lyads/pg6;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lyads/pg6;->a:Lyads/og6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lyads/og6;->a(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAnimateOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/pg6;->d:Z

    return-void
.end method

.method public final setCollapsiblePaddingBottom(I)V
    .locals 1

    iget v0, p0, Lyads/pg6;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lyads/pg6;->b:I

    :cond_0
    return-void
.end method

.method public final setHeightCalculator(Lyads/og6;)V
    .locals 0

    iput-object p1, p0, Lyads/pg6;->a:Lyads/og6;

    return-void
.end method
