.class public final La60;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lb60;",
        "Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lb60;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;

    check-cast p2, Lb60;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lb60;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lb60;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lb60;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->tvSum:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lb60;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->tvStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lb60;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceOperationBinding;->tvStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget p1, p2, Lb60;->g:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
