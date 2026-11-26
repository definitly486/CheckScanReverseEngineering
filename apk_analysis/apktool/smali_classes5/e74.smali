.class public final Le74;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le74$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lf74;",
        "Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;)V
    .locals 1

    sget-object v0, Ld74;->c:Ld74;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Le74;->b:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lf74;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;

    check-cast p2, Lf74;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lf74;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v0, p2, Lf74;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p2, Lf74;->d:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const v0, 0x7f0801a3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const v0, 0x7f0801b4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lf74;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->ivHelp:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    new-instance v1, Lc74;

    invoke-direct {v1, p1, p0}, Lc74;-><init>(Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;Le74;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
