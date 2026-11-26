.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Lhk0;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lwn5;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lwn5;-><init>(I)V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lwn5;

    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, v0}, Lwn5;-><init>(I)V

    .line 19
    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lwn5;

    const/4 v0, 0x0

    .line 23
    invoke-direct {p1, v0}, Lwn5;-><init>(I)V

    .line 24
    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    .line 25
    invoke-virtual {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBlurAlgorithm()Lgk0;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance p0, Ld27;

    invoke-direct {p0}, Ld27;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lh27;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lh27;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lrw6;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->c:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->getBlurAlgorithm()Lgk0;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {v1}, Lhk0;->destroy()V

    new-instance v1, Lqe6;

    iget v2, p0, Leightbitlab/com/blurview/BlurView;->c:I

    invoke-direct {v1, p0, p1, v2, v0}, Lqe6;-><init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILgk0;)V

    iput-object v1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {v0, p1}, Lhk0;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BlurView"

    const-string v0, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lhk0;->c(Z)Lhk0;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lhk0;->c(Z)Lhk0;

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {p0}, Lhk0;->b()V

    return-void
.end method
