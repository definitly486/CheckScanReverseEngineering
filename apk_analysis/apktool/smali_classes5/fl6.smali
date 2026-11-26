.class public final Lfl6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfl6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lhl6;",
        "Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 1

    sget-object v0, Lel6;->c:Lel6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lfl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lhl6;

    return p0
.end method

.method public final h(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivPhotoProfile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lxv;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lxv;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnEdit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lgl6;

    invoke-direct {v2, p0}, Lgl6;-><init>(Lfl6;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Law;

    invoke-direct {v1, p0, v3}, Law;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    check-cast p2, Lhl6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lhl6;->g:Lvm6;

    iget-object v1, p2, Lhl6;->h:Lkw2;

    iget-object v2, p2, Lhl6;->e:Lhl6$a;

    iget-object v3, p2, Lhl6;->f:Lvm6;

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivPhotoProfile:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v4

    invoke-virtual {v4}, Lp37;->b()Lh37;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Luq2;->b:Luq2$c;

    new-instance v6, Lak1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5, v6}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object v4

    check-cast v4, Lh37;

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06001d

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v4

    check-cast v4, Lh37;

    iget-object v5, p2, Lhl6;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v4

    const v5, 0x7f0801b5

    invoke-virtual {v4, v5}, Lee0;->h(I)Lee0;

    move-result-object v4

    check-cast v4, Lh37;

    iget-object v5, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivPhotoProfile:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvUsernameProfile:Landroid/widget/TextView;

    iget-object v5, p2, Lhl6;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvPhone:Landroid/widget/TextView;

    iget-object v5, p2, Lhl6;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvEmail:Landroid/widget/TextView;

    iget-object v5, p2, Lhl6;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_4

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnEdit:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lhl6$a;->c:Ljava/lang/String;

    invoke-static {v4}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_1
    iget-object v4, v2, Lhl6$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvBadgeTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v4, v2, Lhl6$a;->d:Ljava/lang/String;

    invoke-static {v4}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvBadgeTitle:Landroid/widget/TextView;

    iget-object v2, v2, Lhl6$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnEdit:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lkw2;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v4, v1, Lkw2;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lkw2;->d:Ljava/lang/String;

    invoke-static {v2}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    invoke-virtual {v4}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v2

    iget-object v1, v1, Lkw2;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->ivWarning:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Lj60;

    const/4 v5, 0x2

    invoke-direct {v4, p0, p2, v5}, Lj60;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldActiveSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;

    if-eqz v3, :cond_c

    iget-object v2, v3, Lvm6;->f:Lvm6$a;

    iget-object v4, v3, Lvm6;->g:Ljava/lang/String;

    invoke-static {v4}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->mcvActive:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_7
    invoke-virtual {v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v5, v3, Lvm6;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v5, v3, Lvm6;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v4

    iget-object v3, v3, Lvm6;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v3

    iget-object v4, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->ivWarning:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->llAdditional:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    move v4, v7

    goto :goto_3

    :cond_8
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->tvLeftText:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object v5, v2, Lvm6$a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v5, v4

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->tvRightText:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    iget-object v5, v2, Lvm6$a;->b:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object v5, v4

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v3

    if-eqz v2, :cond_b

    iget-object v4, v2, Lvm6$a;->c:Ljava/lang/String;

    :cond_b
    invoke-virtual {v3, v4}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v2

    iget-object v1, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->ivAdditionalIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldExpiredSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lvm6;->g:Ljava/lang/String;

    invoke-static {v1}, Lp46;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_d
    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lvm6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, v0, Lvm6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, v0, Lvm6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->ivWarning:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->btnAction:Landroid/widget/TextView;

    iget-object v0, v0, Lvm6;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lvb1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2, p0}, Lvb1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivPhotoProfile:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
