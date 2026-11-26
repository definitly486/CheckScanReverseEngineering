.class public final Lji4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lki4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lki4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;

    check-cast p2, Lki4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;->pbCounter:Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->setCurrentProgress(I)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->setProgressColor(I)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->setTitles(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;->tvNextLevel:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingChequeCounterBinding;->tvNextLevel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
