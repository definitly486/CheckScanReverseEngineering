.class public final Lhb1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lib1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lib1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;

    check-cast p2, Lib1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lib1;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;->tvTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lib1;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
