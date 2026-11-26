.class public final Lcom/my/target/sk;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/sk$a;
    }
.end annotation


# instance fields
.field public b:Lcom/my/target/sk$a;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/sk;->b:Lcom/my/target/sk$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/my/target/sk;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/my/target/sk;->d:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    check-cast v0, Lpu;

    invoke-virtual {v0, p0}, Lpu;->a(Z)V

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/my/target/sk;->d:Z

    if-nez p0, :cond_2

    const/4 p0, 0x0

    check-cast v0, Lpu;

    invoke-virtual {v0, p0}, Lpu;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/sk;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/sk;->d:Z

    invoke-virtual {p0}, Lcom/my/target/sk;->a()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/sk;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/sk;->d:Z

    invoke-virtual {p0}, Lcom/my/target/sk;->a()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/my/target/sk;->d:Z

    invoke-virtual {p0}, Lcom/my/target/sk;->a()V

    return-void
.end method

.method public setStateChangedListener(Lcom/my/target/sk$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/sk;->b:Lcom/my/target/sk$a;

    return-void
.end method
