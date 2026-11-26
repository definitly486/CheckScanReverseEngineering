.class public final Lyads/sc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final a:Lyads/ic4;

.field public final b:J


# direct methods
.method public constructor <init>(Lyads/ic4;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sc4;->a:Lyads/ic4;

    iput-wide p2, p0, Lyads/sc4;->b:J

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lyads/sc4;->a:Lyads/ic4;

    iget-wide v0, p0, Lyads/sc4;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    iget-boolean p0, p1, Lyads/ic4;->e:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lyads/ic4;->a()V

    iget-object p0, p1, Lyads/ic4;->c:Lyads/e55;

    sget-object v2, Lyads/ic4;->f:[Lze4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    new-instance v4, Lyads/kc4;

    iget-object v5, p1, Lyads/ic4;->a:Lyads/wc4;

    iget-object v6, p1, Lyads/ic4;->b:Lyads/oc4;

    invoke-direct {v4, p0, v5, v6}, Lyads/kc4;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/wc4;Lyads/oc4;)V

    new-instance p0, Lyads/dw3;

    invoke-direct {p0}, Lyads/dw3;-><init>()V

    iput-object p0, p1, Lyads/ic4;->d:Lyads/dw3;

    iget-object v5, v4, Lyads/ay;->b:Lyads/zx;

    sget-object v6, Lyads/zx;->b:Lyads/zx;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lyads/dw3;->b:Lmb4;

    if-eqz v5, :cond_0

    invoke-interface {v5, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v5, p0, Lyads/dw3;->a:Ly22;

    new-instance v6, Lyads/cw3;

    invoke-direct {v6, v0, v1, v4, v2}, Lyads/cw3;-><init>(JLyads/kc4;Le02;)V

    const/4 v0, 0x3

    invoke-static {v5, v2, v2, v6, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Lyads/dw3;->b:Lmb4;

    :cond_1
    sget-object v2, Lj59;->a:Lj59;

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p1}, Lyads/ic4;->a()V

    iput-boolean v3, p1, Lyads/ic4;->e:Z

    :cond_3
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/sc4;->a:Lyads/ic4;

    invoke-virtual {p0}, Lyads/ic4;->a()V

    return-void
.end method
