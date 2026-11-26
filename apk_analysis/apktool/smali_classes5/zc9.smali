.class public final Lzc9;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lqq0;",
        "Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lg71;


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lqq0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;

    check-cast p2, Lqq0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lqq0;->a:Lq71;

    iget-object v2, v1, Lq71;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lq71;->d:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;->tvSubtitle:Landroid/widget/TextView;

    if-nez v2, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;->ivCategory:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, v1, Lq71;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v0

    invoke-virtual {v0}, Lee0;->i()Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;->ivCategory:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lxc9;

    invoke-direct {v0, p0, p2}, Lxc9;-><init>(Lzc9;Lqq0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
