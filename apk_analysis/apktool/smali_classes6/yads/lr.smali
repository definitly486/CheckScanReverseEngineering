.class public final Lyads/lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lyads/nr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/lr;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    iget v0, p0, Lyads/lr;->c:I

    iput v0, p0, Lyads/lr;->b:I

    iput p1, p0, Lyads/lr;->c:I

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 3

    iget-object p3, p0, Lyads/lr;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/nr;

    if-eqz p3, :cond_1

    iget v0, p0, Lyads/lr;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lyads/lr;->b:I

    if-ne p0, v2, :cond_1

    :cond_0
    invoke-virtual {p3, p1, p2, v2}, Lyads/nr;->a(IFZ)V

    :cond_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lyads/lr;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nr;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lyads/nr;->b:Lyads/kr;

    if-eqz v1, :cond_0

    iget v1, v1, Lyads/kr;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eq v1, p1, :cond_3

    iget v1, p0, Lyads/lr;->c:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget p0, p0, Lyads/lr;->b:I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    iget-object v1, v0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kr;

    invoke-virtual {v0, p1, p0}, Lyads/nr;->b(Lyads/kr;Z)V

    :cond_3
    return-void
.end method
