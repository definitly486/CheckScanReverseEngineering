.class public final Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final promotionId:I


# direct methods
.method public constructor <init>(Luf3;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;->flowRouter:Luf3;

    iput p2, p0, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;->promotionId:I

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public final onOpened()V
    .locals 3

    new-instance v0, Lkd$i0$a;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;->promotionId:I

    sget-object v2, Lkd$q;->OpenForm:Lkd$q;

    invoke-direct {v0, v1, v2}, Lkd$i0$a;-><init>(ILkd$q;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Lxg7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;->promotionId:I

    invoke-direct {v1, p0}, Lxg7;-><init>(I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
