.class public Lyads/zo1;
.super Lyads/nw5;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;


# instance fields
.field public final synthetic r:Lyads/xh1;

.field public s:Lyads/lb;

.field public t:Lyads/za2;

.field public u:Lyads/kt4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/zo1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/zo1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lyads/nw5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lyads/xh1;

    invoke-direct {p1}, Lyads/xh1;-><init>()V

    iput-object p1, p0, Lyads/zo1;->r:Lyads/xh1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    sget p3, Lcom/yandex/mobile/ads/R$attr;->monetization_ads_divkit_divTextStyle:I

    invoke-direct {p0, p1, p2, p3}, Lyads/zo1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    .line 9
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    .line 10
    check-cast p0, Lyads/jq0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/tp0;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0}, Lyads/hs2;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

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

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lyads/zo1;->u:Lyads/kt4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/kt4;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/zo1;->u:Lyads/kt4;

    invoke-super {p0}, Lyads/an2;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/zo1;->t:Lyads/za2;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lyads/za2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    iget-object v0, p0, Lyads/zo1;->t:Lyads/za2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lyads/za2;->a(Landroid/graphics/Canvas;Landroid/text/Spanned;Landroid/text/Layout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lyads/nw5;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lyads/an2;->onSizeChanged(IIII)V

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->h()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lyads/zo1;->u:Lyads/kt4;

    if-nez p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/kt4;->a()V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/kt4;->b()V

    :cond_1
    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0}, Lyads/wh1;->release()V

    return-void
.end method

.method public setAdaptiveMaxLines$mobileads_externalRelease(Lyads/lb;)V
    .locals 0

    iput-object p1, p0, Lyads/zo1;->s:Lyads/lb;

    return-void
.end method

.method public setAnimationStartDelay$mobileads_externalRelease(J)V
    .locals 0

    return-void
.end method

.method public setBindingContext(Lyads/tt;)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lyads/br0;)V
    .locals 0

    check-cast p1, Lyads/jq0;

    invoke-virtual {p0, p1}, Lyads/zo1;->setDiv(Lyads/jq0;)V

    return-void
.end method

.method public setDiv(Lyads/jq0;)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    .line 6
    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/zo1;->r:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method

.method public setTextRoundedBgHelper$mobileads_externalRelease(Lyads/za2;)V
    .locals 0

    iput-object p1, p0, Lyads/zo1;->t:Lyads/za2;

    return-void
.end method
