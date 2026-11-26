.class public final Lp09;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lq09;",
        "Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V
    .locals 1

    sget-object v0, Ln09;->c:Ln09;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lp09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lq09;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;

    check-cast p2, Lq09;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140578

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->rvBanks:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p1, p0, Leu1;

    if-eqz p1, :cond_0

    check-cast p0, Leu1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, p2, Lq09;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->rvBanks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Ll09;

    iget-object p0, p0, Lp09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    invoke-direct {v2, p0}, Ll09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lil2;

    const/4 v3, 0x0

    aput-object v2, p0, v3

    invoke-direct {v1, p0}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->rvBanks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo09;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBanksBinding;->rvBanks:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
