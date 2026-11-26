.class public final Lyads/qg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/cy1;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public constructor <init>(Lyads/cy1;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lyads/qg1;->b:Lyads/cy1;

    iput-object p2, p0, Lyads/qg1;->c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/qg1;->b:Lyads/cy1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/qg1;->b:Lyads/cy1;

    iget-object p0, p0, Lyads/qg1;->c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method
