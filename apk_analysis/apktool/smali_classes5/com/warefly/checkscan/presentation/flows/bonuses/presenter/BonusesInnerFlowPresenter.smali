.class public final Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;",
        ">;"
    }
.end annotation


# instance fields
.field private final flow:Lsq0;

.field private final id:I

.field private final toolbarTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsq0;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->flow:Lsq0;

    iput p2, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    return-void
.end method

.method private final loadCategories()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Luf7;->a:Luf7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadCategoriesFlow()V
    .locals 7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lmh7;

    iget v2, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    sget-object v4, Lkd$o0;->Category:Lkd$o0;

    sget-object v5, Luv7;->Category:Luv7;

    const/4 v6, 0x4

    invoke-direct/range {v1 .. v6}, Lmh7;-><init>(ILjava/lang/String;Lkd$o0;Luv7;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadCoupon()V
    .locals 4

    new-instance v0, Lxd;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    invoke-direct {v0, v1}, Lxd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lrd;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    invoke-direct {v0, v1}, Lrd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lgg7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lgg7;-><init>(J)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadCouponFromSearch()V
    .locals 4

    new-instance v0, Lxd;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    invoke-direct {v0, v1}, Lxd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lrd;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    invoke-direct {v0, v1}, Lrd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lgg7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lgg7;-><init>(J)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadFavoritePreviews()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lpg7;

    iget v2, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lpg7;-><init>(ILjava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadHowGetCashback()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz p0, :cond_0

    new-instance v0, Ljh7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadSelection()V
    .locals 7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lmh7;

    iget v2, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    sget-object v4, Lkd$o0;->Bonuses:Lkd$o0;

    sget-object v5, Luv7;->Selection:Luv7;

    const/4 v6, 0x4

    invoke-direct/range {v1 .. v6}, Lmh7;-><init>(ILjava/lang/String;Lkd$o0;Luv7;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadShopPage()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Llf7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Llf7;-><init>(J)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadSpecials()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lnf7;->a:Lnf7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadTopSelection()V
    .locals 7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlow;

    if-eqz v0, :cond_0

    new-instance v1, Lmh7;

    iget v2, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    sget-object v5, Lkd$o0;->Bonuses:Lkd$o0;

    sget-object v6, Luv7;->TopSelection:Luv7;

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lmh7;-><init>(ILjava/lang/String;ZLkd$o0;Luv7;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getFlow()Lsq0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->flow:Lsq0;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->id:I

    return p0
.end method

.method public final getToolbarTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->toolbarTitle:Ljava/lang/String;

    return-object p0
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->flow:Lsq0;

    sget-object v1, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadFavoritePreviews()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadHowGetCashback()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadCouponFromSearch()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadCoupon()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadCategories()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadSpecials()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadShopPage()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadTopSelection()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadSelection()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;->loadCategoriesFlow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
