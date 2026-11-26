.class public final Lu56;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu56$a;,
        Lu56$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lv56;",
        "Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V
    .locals 1

    sget-object v0, Lt56;->c:Lt56;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lu56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lv56;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;

    check-cast p2, Lv56;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lv56;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lv56;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lv56;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lv56;->e:Lv56$a;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvBadgeText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lv56$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lv56;->g:Lv56$b;

    sget-object v1, Lu56$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0604f6

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const v0, 0x7f0802cf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->btnAddEmail:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->btnAddEmail:Landroid/widget/TextView;

    iget-object p2, p2, Lv56;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->groupEmailField:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_3
    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0604c4

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const v1, 0x7f0801f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object v1, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->btnAddEmail:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->groupEmailField:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p2, Lv56;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->clickableArea:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lb71;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lb71;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->btnAddEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lc71;

    invoke-direct {v1, p0, v3}, Lc71;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
