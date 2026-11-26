.class public final Lta;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lxa;",
        "Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V
    .locals 1

    sget-object v0, Lsa;->c:Lsa;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lta;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lxa;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

    check-cast p2, Lxa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lxa;->h:Lxa$f;

    iget-object v1, p2, Lxa;->f:Lxa$d;

    iget-object v2, p2, Lxa;->e:Lxa$c;

    iget-object v3, p2, Lxa;->g:Lxa$h;

    iget-object v4, p2, Lxa;->j:Lxa$a;

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v8

    iget-object v9, v4, Lxa$a;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v8

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f06001d

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v9}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v8

    check-cast v8, Lh37;

    iget-object v9, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v8, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->mainCard:Lcom/google/android/material/card/MaterialCardView;

    :try_start_0
    iget-object v9, v4, Lxa$a;->c:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    new-instance v10, Lk57$a;

    invoke-direct {v10, v9}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v9, v10

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    instance-of v10, v9, Lk57$a;

    if-eqz v10, :cond_0

    move-object v9, v5

    :cond_0
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :try_start_1
    iget-object v5, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvBadge:Landroid/widget/TextView;

    iget-object v8, v4, Lxa$a;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v5, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvBadge:Landroid/widget/TextView;

    iget-object v4, v4, Lxa$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->mainCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvBankName:Landroid/widget/TextView;

    iget-object v5, p2, Lxa;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvCardType:Landroid/widget/TextView;

    iget-object v5, p2, Lxa;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvFirstLabel:Landroid/widget/TextView;

    iget-object v5, v2, Lxa$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvFirstValue:Landroid/widget/TextView;

    iget-object v5, v2, Lxa$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvSecondLabel:Landroid/widget/TextView;

    iget-object v5, v2, Lxa$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvSecondValue:Landroid/widget/TextView;

    iget-object v2, v2, Lxa$c;->d:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v2

    iget-object v4, p2, Lxa;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v2

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->groupCategories:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvCategoriesTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lxa$d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    instance-of v5, v4, Leu1;

    if-eqz v5, :cond_2

    check-cast v4, Leu1;

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_3

    iget-object v5, v1, Lxa$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Leu1;->submitList(Ljava/util/List;)V

    :cond_3
    iget-object v1, v1, Lxa$d;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivCategoriesInfo:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v5, Lua;

    invoke-direct {v5, p1, p2}, Lua;-><init>(Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;Lxa;)V

    invoke-direct {v1, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivCategoriesInfo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivCategoriesInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivCategoriesInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->groupCategories:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_3
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvStepsTitle:Landroid/widget/TextView;

    iget-object v4, v3, Lxa$h;->a:Ljava/lang/String;

    iget-object v5, v3, Lxa$h;->c:Lxa$g;

    iget-object v3, v3, Lxa$h;->b:Lxa$g;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvStep1Text:Landroid/widget/TextView;

    sget v4, Lsx3;->a:I

    iget-object v4, v3, Lxa$g;->a:Ljava/lang/String;

    invoke-static {v4}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvStep1Text:Landroid/widget/TextView;

    sget-object v4, Lx61;->a:Lx61;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v3, v3, Lxa$g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivStep1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvStep2Text:Landroid/widget/TextView;

    iget-object v3, v5, Lxa$g;->a:Ljava/lang/String;

    invoke-static {v3}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvStep2Text:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v3, v5, Lxa$g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivStep2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->btnIssueCard:Landroid/widget/TextView;

    iget-object v3, p2, Lxa;->i:Lxa$b;

    iget-object v3, v3, Lxa$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v5, Lva;

    invoke-direct {v5, p0, p2, v7}, Lva;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v3, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_6

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvPskRate:Landroid/widget/TextView;

    iget-object v1, v0, Lxa$f;->a:Ljava/lang/String;

    invoke-static {v1}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvPskRate:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvPskRate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600c1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    iget-object v0, v0, Lxa$f;->b:Ljava/lang/String;

    invoke-static {v0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivPskInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lwa;

    invoke-direct {v1, v7, p1, p2}, Lwa;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->groupConditions:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivPskInfo:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->groupConditions:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lra;

    sget-object v2, Lqa;->c:Lqa;

    invoke-direct {v1, v2}, Lvd9;-><init>(Ldm3;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lil2;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Leu1;-><init>([Lil2;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
