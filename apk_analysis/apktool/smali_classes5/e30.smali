.class public final Le30;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lf30;",
        "Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lf30;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;

    check-cast p2, Lf30;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lf30;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->tvValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lf30;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->tvStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lf30;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lf30;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p0, p2, Lf30;->h:Z

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->tvExpand:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1404ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1404a6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p0, La87;

    iget-boolean v0, p2, Lf30;->h:Z

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lc30;

    invoke-direct {v3, p2, p1}, Lc30;-><init>(Lf30;Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;)V

    new-instance v4, Ld30;

    invoke-direct {v4, p2, p1}, Ld30;-><init>(Lf30;Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;)V

    invoke-direct {p0, v0, v2, v3, v4}, La87;-><init>(ZLandroid/view/View;Lll3;Lll3;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v2, Ly20;

    invoke-direct {v2, p0, v1}, Ly20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    iget-object v0, p2, Lf30;->e:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_1
    move-object v6, v0

    sget-object v9, Lb30;->f:Lb30;

    const/4 v10, 0x4

    const v5, 0x7f0d019c

    const/4 v7, 0x0

    sget-object v8, La30;->f:La30;

    invoke-direct/range {v4 .. v10}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lf30;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
