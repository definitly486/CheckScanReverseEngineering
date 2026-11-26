.class public final Lyads/as1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/bs1;

.field public final synthetic c:Lnl3;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/bs1;Lnl3;)V
    .locals 0

    iput-object p2, p0, Lyads/as1;->b:Lyads/bs1;

    iput-object p3, p0, Lyads/as1;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lyads/as1;->b:Lyads/bs1;

    iget-object v1, v0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    iget-object v0, v0, Lyads/bs1;->c:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lyads/as1;->c:Lnl3;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/as1;->b:Lyads/bs1;

    iput v0, p0, Lyads/bs1;->b:I

    return-void
.end method
