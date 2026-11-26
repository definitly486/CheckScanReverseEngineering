.class public final Lzg6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lfh6;",
        "Lcom/warefly/checkscan/products/databinding/ItemCashbackProgressBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lfh6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemCashbackProgressBinding;

    check-cast p2, Lfh6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/products/databinding/ItemCashbackProgressBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lfh6;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/products/databinding/ItemCashbackProgressBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v0, p2, Lfh6;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/products/databinding/ItemCashbackProgressBinding;->pbCounter:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iget p1, p2, Lfh6;->c:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    return-void
.end method
