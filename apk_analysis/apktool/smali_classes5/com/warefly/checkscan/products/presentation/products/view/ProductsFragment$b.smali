.class public final Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;->e:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

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

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;->e:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->h:Li58;

    if-eqz p0, :cond_0

    iget-object p0, p0, Li58;->i:Lm8;

    invoke-virtual {p0, p2}, Lm8;->e(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p2, p0, Lti6;

    const/16 p3, 0x8

    const/4 p4, 0x4

    if-eqz p2, :cond_1

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    instance-of p2, p0, Lcn;

    if-eqz p2, :cond_2

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p2

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p3

    const/16 p4, 0x10

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p4

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    instance-of p0, p0, Lka3;

    if-eqz p0, :cond_3

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    return-void
.end method
