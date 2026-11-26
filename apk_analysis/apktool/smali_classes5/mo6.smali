.class public final Lmo6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lvo6;",
        "Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V
    .locals 1

    sget-object v0, Llo6;->c:Llo6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lmo6;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lvo6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;

    check-cast p2, Lvo6;

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lvo6;->b:Lvo6$a;

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->rvPromoBlocks:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v3, v2, Leu1;

    if-eqz v3, :cond_0

    check-cast v2, Leu1;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object p2, p2, Lvo6;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object p2, v1, Lvo6$a;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f06001d

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->mcvPromo:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0xe

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v3, v2, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object p2, v1, Lvo6$a;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v2, Lk57$a;

    invoke-direct {v2, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v2

    :goto_1
    nop

    instance-of v2, p2, Lk57$a;

    if-eqz v2, :cond_2

    move-object p2, v0

    :cond_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->tvBadge:Landroid/widget/TextView;

    :try_start_1
    iget-object p1, v1, Lvo6$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    nop

    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    :goto_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, v1, Lvo6$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->mcvPromo:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2, p0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 9

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->rvPromoBlocks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Lto6;

    sget-object v3, Lso6;->c:Lso6;

    invoke-direct {v2, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lkh6;

    sget-object v4, Ljo6;->c:Ljo6;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkh6;-><init>(Ldm3;I)V

    new-instance v4, Lhp6;

    sget-object v6, Lfp6;->c:Lfp6;

    invoke-direct {v4, v6}, Lvd9;-><init>(Ldm3;)V

    new-instance v6, Lho6;

    iget-object p0, p0, Lmo6;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    invoke-direct {v6, p0}, Lho6;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    new-instance p0, Loo6;

    sget-object v7, Lno6;->c:Lno6;

    invoke-direct {p0, v7}, Lvd9;-><init>(Ldm3;)V

    const/4 v7, 0x5

    new-array v7, v7, [Lil2;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v3, v7, v5

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const/4 v2, 0x4

    aput-object p0, v7, v2

    invoke-direct {v1, v7}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
