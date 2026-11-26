.class public final Lck4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ldk4;",
        "Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTermsBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ldk4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTermsBinding;

    check-cast p2, Ldk4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTermsBinding;->tvTitle:Landroid/widget/TextView;

    const-string v0, "\u0423\u0441\u043b\u043e\u0432\u0438\u044f \u0431\u0435\u0437 \u0441\u0442\u0430\u0442\u0443\u0441\u0430:"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTermsBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ljz7;

    iget-object v5, p2, Ldk4;->a:Ljava/util/List;

    sget-object v8, Lbk4;->f:Lbk4;

    const/4 v9, 0x4

    const v4, 0x7f0d014d

    const/4 v6, 0x0

    sget-object v7, Lak4;->f:Lak4;

    invoke-direct/range {v3 .. v9}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
