.class public final synthetic Lc74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc74;->b:Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;

    iput-object p2, p0, Lc74;->c:Le74;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc74;->b:Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lc74;->c:Le74;

    iget-object p0, p0, Le74;->b:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    iget-object v0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Le74$a;->onHideHelpInfoClicked(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

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

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void

    :cond_2
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

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/ItemInsuranceShowcaseDescriptionBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
