.class public final Lyads/e62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final a:Lyads/tt;

.field public final b:Lyads/bt0;

.field public final c:Lyads/bj2;

.field public final d:Lyads/m62;

.field public e:Lyads/y52;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/bt0;Lyads/bj2;Lyads/m62;Lyads/y52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e62;->a:Lyads/tt;

    iput-object p2, p0, Lyads/e62;->b:Lyads/bt0;

    iput-object p3, p0, Lyads/e62;->c:Lyads/bj2;

    iput-object p4, p0, Lyads/e62;->d:Lyads/m62;

    iput-object p5, p0, Lyads/e62;->e:Lyads/y52;

    const/4 p1, -0x1

    iput p1, p0, Lyads/e62;->f:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget v0, p0, Lyads/e62;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lyads/e62;->e:Lyads/y52;

    iget-object v1, v1, Lyads/y52;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/t52;

    iget-object v1, p0, Lyads/e62;->c:Lyads/bj2;

    iget-object v2, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v3, p0, Lyads/e62;->d:Lyads/m62;

    iget-object v0, v0, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v1, v2, v3, v0}, Lyads/bj2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    iget-object v0, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v1, p0, Lyads/e62;->d:Lyads/m62;

    iget-object v0, v0, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    :cond_1
    iget-object v0, p0, Lyads/e62;->e:Lyads/y52;

    iget-object v0, v0, Lyads/y52;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/t52;

    iget-object v1, p0, Lyads/e62;->c:Lyads/bj2;

    iget-object v2, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v3, p0, Lyads/e62;->d:Lyads/m62;

    iget-object v4, v0, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v1, v2, v3, v4}, Lyads/bj2;->b(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    iget-object v1, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v1, v1, Lyads/tt;->a:Lyads/vq0;

    iget-object v2, p0, Lyads/e62;->d:Lyads/m62;

    iget-object v0, v0, Lyads/t52;->a:Lyads/br0;

    iget-object v1, v1, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lyads/e62;->f:I

    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {p0, p1}, Lyads/e62;->a(I)V

    return-void
.end method
