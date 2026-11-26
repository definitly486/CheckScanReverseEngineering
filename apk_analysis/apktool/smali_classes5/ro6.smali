.class public final Lro6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V
    .locals 0

    iput-object p1, p0, Lro6;->e:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

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

    const/16 p3, 0x10

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lro6;->e:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r:Leu1;

    if-eqz p0, :cond_1

    iget-object p0, p0, Leu1;->i:Lm8;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lm8;->f(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    instance-of p0, p0, Lqp6;

    if-eqz p0, :cond_2

    const/16 p0, 0x20

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    :goto_1
    iput p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
