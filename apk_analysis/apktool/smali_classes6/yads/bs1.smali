.class public final Lyads/bs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lyads/ur1;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lnl3;Lyads/ur1;)V
    .locals 0

    iput-object p1, p0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lyads/bs1;->d:Lnl3;

    iput-object p3, p0, Lyads/bs1;->e:Lyads/ur1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance p3, Lyads/as1;

    invoke-direct {p3, p1, p0, p2}, Lyads/as1;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/bs1;Lnl3;)V

    invoke-static {p1, p3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p1

    iget-object p2, p0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iget p2, p0, Lyads/bs1;->b:I

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lyads/bs1;->e:Lyads/ur1;

    iget-object p1, p1, Lyads/ur1;->u:Lyads/ls1;

    instance-of p1, p1, Lyads/js1;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    :cond_1
    return-void

    :cond_2
    iput p1, p0, Lyads/bs1;->b:I

    iget-object p0, p0, Lyads/bs1;->d:Lnl3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
