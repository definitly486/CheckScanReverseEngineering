.class public final Lyads/hs4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lfr;

.field public final synthetic c:Lyads/is4;


# direct methods
.method public constructor <init>(Lyads/is4;)V
    .locals 0

    iput-object p1, p0, Lyads/hs4;->c:Lyads/is4;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lyads/hs4;->a:I

    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    iput-object p1, p0, Lyads/hs4;->b:Lfr;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lyads/hs4;->b:Lfr;

    invoke-virtual {p1}, Lfr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/hs4;->b:Lfr;

    invoke-virtual {p1}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    iget-object v0, p0, Lyads/hs4;->c:Lyads/is4;

    invoke-static {v0}, Lyads/is4;->a(Lyads/is4;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Lyads/vr1;

    invoke-virtual {v1, p1}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cn1;

    invoke-static {v0, p1}, Lyads/is4;->a(Lyads/is4;Lyads/cn1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    iget v0, p0, Lyads/hs4;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lyads/hs4;->b:Lfr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr;->addLast(Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lyads/hs4;->a:I

    if-ne v1, v0, :cond_2

    :goto_0
    iget-object v0, p0, Lyads/hs4;->b:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/hs4;->b:Lfr;

    invoke-virtual {v0}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget v1, Lyads/cr3;->a:I

    sget-object v1, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    iget-object v1, p0, Lyads/hs4;->c:Lyads/is4;

    invoke-static {v1}, Lyads/is4;->a(Lyads/is4;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Lyads/vr1;

    invoke-virtual {v2, v0}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    invoke-static {v1, v0}, Lyads/is4;->a(Lyads/is4;Lyads/cn1;)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lyads/hs4;->a:I

    return-void
.end method
