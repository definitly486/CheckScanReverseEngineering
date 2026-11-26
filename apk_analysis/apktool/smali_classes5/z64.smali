.class public final Lz64;
.super Lf32;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz64$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf32<",
        "La74;",
        "Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

.field public final d:Lrb;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;Lrb;Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ly64;->c:Ly64;

    invoke-direct {p0, p3, v0}, Lf32;-><init>(Ly22;Ldm3;)V

    iput-object p1, p0, Lz64;->c:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    iput-object p2, p0, Lz64;->d:Lrb;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ly68;
    .locals 0

    check-cast p1, La74;

    iget p1, p1, La74;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lz64;->d:Lrb;

    invoke-virtual {p0, p1}, Lrb;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly68;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, La74;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;

    check-cast p2, La74;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, La74;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v1, p2, La74;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, La74;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->tvDeadline:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->clLogo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->mcContainer:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604a8

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->clLogo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->tvDeadline:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->mcContainer:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600bf

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, La74;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, La74;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->btnAction:Landroid/widget/TextView;

    iget-object v1, p2, La74;->g:La74$a;

    iget-object v1, v1, La74$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lpb;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lpb;-><init>(Lil2;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;J)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->tvDeadline:Landroid/widget/TextView;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140602

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    div-long v0, p2, v0

    const-wide/32 v2, 0x36ee80

    div-long v2, p2, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long v4, p2, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr p2, v8

    rem-long/2addr p2, v6

    new-instance v6, Ljava/util/Locale;

    const-string v7, "ru"

    const-string v8, "RU"

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v7, 0x7f140601

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v6, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
