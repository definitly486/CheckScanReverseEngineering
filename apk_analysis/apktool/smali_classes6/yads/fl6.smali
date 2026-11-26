.class public final Lyads/fl6;
.super Lyads/ys1;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ZILyads/ts1;Lyads/rr1;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, Lyads/ys1;-><init>(ILyads/ts1;Lyads/rr1;)V

    iput-object p1, p0, Lyads/fl6;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean p2, p0, Lyads/fl6;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lyads/fl6;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lyads/fl6;->e:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
