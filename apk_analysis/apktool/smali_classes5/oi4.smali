.class public final Loi4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lmi4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lmi4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;

    check-cast p2, Lmi4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->tvReward:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->tvFrom:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->tvTo:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->pbProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->tvProgress:Landroid/widget/TextView;

    invoke-static {p1, v0}, Loz1;->a(Landroidx/viewbinding/ViewBinding;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCountChequesBinding;->pbProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-static {p1, v0}, Loz1;->a(Landroidx/viewbinding/ViewBinding;I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    return-void
.end method
