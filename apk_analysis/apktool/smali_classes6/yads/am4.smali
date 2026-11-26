.class public final Lyads/am4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xd6;

.field public final b:Landroid/view/TextureView;

.field public final c:Lyads/sk4;

.field public d:Lyads/jl4;

.field public e:Lyads/wx3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/xd6;Landroid/view/TextureView;Lyads/sk4;)V
    .locals 1

    new-instance v0, Lyads/uk5;

    invoke-direct {v0}, Lyads/uk5;-><init>()V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyads/am4;->a:Lyads/xd6;

    iput-object p3, p0, Lyads/am4;->b:Landroid/view/TextureView;

    iput-object p4, p0, Lyads/am4;->c:Lyads/sk4;

    iput-object v0, p0, Lyads/am4;->e:Lyads/wx3;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lyads/am4;->d:Lyads/jl4;

    if-eqz p0, :cond_0

    check-cast p0, Lyads/bl4;

    iget-object v0, p0, Lyads/bl4;->a:Lyads/gr2;

    iget-object p0, p0, Lyads/bl4;->b:Lyads/am4;

    iget-object p0, p0, Lyads/am4;->b:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Lyads/gr2;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lyads/am4;->d:Lyads/jl4;

    if-eqz p0, :cond_0

    check-cast p0, Lyads/bl4;

    iget-object v0, p0, Lyads/bl4;->b:Lyads/am4;

    iget-object v0, v0, Lyads/am4;->a:Lyads/xd6;

    iget-object v0, v0, Lyads/xd6;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lyads/bl4;->a:Lyads/gr2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/gr2;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lyads/am4;->e:Lyads/wx3;

    invoke-interface {v0, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    new-instance v0, Lyads/l25;

    invoke-direct {v0, p1}, Lyads/l25;-><init>(F)V

    iput-object v0, p0, Lyads/am4;->e:Lyads/wx3;

    return-void
.end method

.method public final setOnAttachStateChangeListener(Lyads/jl4;)V
    .locals 0

    iput-object p1, p0, Lyads/am4;->d:Lyads/jl4;

    return-void
.end method
