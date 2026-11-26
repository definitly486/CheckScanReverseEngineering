.class public final Lyads/jj2;
.super Lyads/bl6;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;
.implements Lyads/g71;


# instance fields
.field public final synthetic A:Lyads/xh1;

.field public final synthetic B:Lyads/h71;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/bl6;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/xh1;

    invoke-direct {p1}, Lyads/xh1;-><init>()V

    iput-object p1, p0, Lyads/jj2;->A:Lyads/xh1;

    new-instance p1, Lyads/h71;

    invoke-direct {p1}, Lyads/h71;-><init>()V

    iput-object p1, p0, Lyads/jj2;->B:Lyads/h71;

    return-void
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    .line 9
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    .line 10
    check-cast p0, Lyads/up0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/tp0;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {p0}, Lyads/hs2;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->d()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lyads/l51;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lyads/l51;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lyads/tq;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/jj2;->B:Lyads/h71;

    iget-object p0, p0, Lyads/h71;->a:Ljava/util/List;

    return-object p0
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->h()V

    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {p0}, Lyads/wh1;->release()V

    return-void
.end method

.method public setBindingContext(Lyads/tt;)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lyads/br0;)V
    .locals 0

    check-cast p1, Lyads/up0;

    invoke-virtual {p0, p1}, Lyads/jj2;->setDiv(Lyads/up0;)V

    return-void
.end method

.method public setDiv(Lyads/up0;)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    .line 6
    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyads/cn1;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lyads/jj2;->B:Lyads/h71;

    iput-object p1, p0, Lyads/h71;->a:Ljava/util/List;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method
