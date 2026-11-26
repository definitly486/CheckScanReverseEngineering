.class public final Lx70;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx70$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lv70;",
        "Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 1

    sget-object v0, Lw70;->c:Lw70;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lx70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lv70;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;

    check-cast p2, Lv70;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;->rvMethods:Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object p1, p2, Lv70;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 16

    move-object/from16 v0, p1

    check-cast v0, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;->rvMethods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v3, Lkp6;

    sget-object v4, Lcj9;->c:Lcj9;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkp6;-><init>(Ldm3;I)V

    new-instance v4, Lyi9;

    move-object/from16 v6, p0

    iget-object v6, v6, Lx70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-direct {v4, v6}, Lyi9;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v7, Lak9;

    invoke-direct {v7, v6}, Lak9;-><init>(Lrj9;)V

    new-instance v8, Ldk9;

    invoke-direct {v8}, Ldk9;-><init>()V

    new-instance v9, Lkj9;

    invoke-direct {v9, v6}, Lkj9;-><init>(Lrj9;)V

    new-instance v10, Ltj9;

    invoke-direct {v10, v6}, Ltj9;-><init>(Lrj9;)V

    new-instance v11, Lij9;

    invoke-direct {v11, v6}, Lij9;-><init>(Lrj9;)V

    new-instance v12, Lqj9;

    invoke-direct {v12, v6}, Lqj9;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v13, Lmj9;

    invoke-direct {v13, v5, v6}, Lmj9;-><init>(ZLrj9;)V

    new-instance v14, Lmj9;

    invoke-direct {v14, v5, v6}, Lmj9;-><init>(ZLrj9;)V

    new-instance v15, Lxj9;

    invoke-direct {v15, v6}, Lxj9;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const/16 v6, 0xb

    new-array v6, v6, [Lil2;

    move/from16 p1, v5

    const/4 v5, 0x0

    aput-object v3, v6, v5

    aput-object v4, v6, p1

    const/4 v3, 0x2

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v8, v6, v3

    const/4 v3, 0x4

    aput-object v9, v6, v3

    const/4 v3, 0x5

    aput-object v10, v6, v3

    const/4 v3, 0x6

    aput-object v11, v6, v3

    const/4 v3, 0x7

    aput-object v12, v6, v3

    const/16 v3, 0x8

    aput-object v13, v6, v3

    const/16 v3, 0x9

    aput-object v14, v6, v3

    const/16 v3, 0xa

    aput-object v15, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v3, p1

    invoke-direct {v2, v0, v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lx70$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
