.class public final Lyads/kc4;
.super Lyads/ay;
.source "SourceFile"


# static fields
.field public static final synthetic g:[Lze4;


# instance fields
.field public final c:Lyads/wc4;

.field public final d:Lyads/oc4;

.field public final e:Lyads/e55;

.field public f:Lyads/jc4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/kc4;

    const-string v1, "viewPager"

    const-string v2, "getViewPager()Landroidx/viewpager2/widget/ViewPager2;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/kc4;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/wc4;Lyads/oc4;)V
    .locals 0

    invoke-direct {p0}, Lyads/ay;-><init>()V

    iput-object p2, p0, Lyads/kc4;->c:Lyads/wc4;

    iput-object p3, p0, Lyads/kc4;->d:Lyads/oc4;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/kc4;->e:Lyads/e55;

    sget-object p1, Lyads/jc4;->b:Lyads/jc4;

    iput-object p1, p0, Lyads/kc4;->f:Lyads/jc4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lyads/kc4;->e:Lyads/e55;

    sget-object v1, Lyads/kc4;->g:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_8

    sget-object v1, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {v1, v0}, Lyads/th6;->a(Landroid/view/View;)Lyads/uh6;

    move-result-object v1

    iget v1, v1, Lyads/uh6;->a:I

    if-lez v1, :cond_7

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lyads/jc4;->b:Lyads/jc4;

    iput-object v0, p0, Lyads/kc4;->f:Lyads/jc4;

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    sget-object v0, Lyads/jc4;->c:Lyads/jc4;

    iput-object v0, p0, Lyads/kc4;->f:Lyads/jc4;

    goto :goto_1

    :cond_2
    sget-object v0, Lyads/zx;->c:Lyads/zx;

    iput-object v0, p0, Lyads/ay;->b:Lyads/zx;

    :cond_3
    :goto_1
    iget-object v0, p0, Lyads/kc4;->f:Lyads/jc4;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lyads/kc4;->c:Lyads/wc4;

    iget-object v0, v0, Lyads/wc4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lyads/kc4;->c:Lyads/wc4;

    iget-object v0, v0, Lyads/wc4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lyads/kc4;->d:Lyads/oc4;

    iget-boolean v1, v0, Lyads/oc4;->e:Z

    if-eqz v1, :cond_7

    const-string v1, "first_auto_swipe"

    invoke-virtual {v0, v1}, Lyads/oc4;->a(Ljava/lang/String;)V

    iput-boolean v2, v0, Lyads/oc4;->e:Z

    :cond_7
    sget-object v0, Lj59;->a:Lj59;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_9

    sget-object v0, Lyads/zx;->c:Lyads/zx;

    iput-object v0, p0, Lyads/ay;->b:Lyads/zx;

    :cond_9
    return-void
.end method
