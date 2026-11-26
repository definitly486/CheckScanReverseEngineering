.class public final Lyads/xc4;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/b05;

.field public final d:Lyads/q84;

.field public final e:Lyads/d9;

.field public final f:Ly22;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/b05;Lyads/q84;Lyads/d9;Ly22;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/xc4;->c:Lyads/b05;

    iput-object p3, p0, Lyads/xc4;->d:Lyads/q84;

    iput-object p4, p0, Lyads/xc4;->e:Lyads/d9;

    iput-object p5, p0, Lyads/xc4;->f:Ly22;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p0, p0, Lyads/uc4;

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    check-cast p2, Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lyads/xc4;->c:Lyads/b05;

    iget-object v1, p0, Lyads/xc4;->e:Lyads/d9;

    iget-object v2, p0, Lyads/xc4;->f:Ly22;

    new-instance v3, Lyads/uc4;

    invoke-direct {v3, v0, p2, v1, v2}, Lyads/uc4;-><init>(Lyads/b05;Ljava/util/List;Lyads/d9;Ly22;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lyads/xc4;->d:Lyads/q84;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "IllegalArgumentException: set adapter exception"

    :cond_0
    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
