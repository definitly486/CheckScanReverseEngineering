.class public final Lao7;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;)V
    .locals 0

    iput-object p1, p0, Lao7;->e:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lao7;->e:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Leu1;->i:Lm8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lm8;->f(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p2, p0, Lcn;

    const/16 p3, 0x10

    if-eqz p2, :cond_1

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    const/16 p2, 0x8

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p4

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p3

    invoke-virtual {p1, p0, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    instance-of p0, p0, Lka3;

    if-eqz p0, :cond_2

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void
.end method
