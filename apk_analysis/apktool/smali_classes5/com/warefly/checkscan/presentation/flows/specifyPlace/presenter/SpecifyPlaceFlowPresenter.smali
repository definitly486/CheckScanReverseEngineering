.class public final Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final chequeRequestId:J

.field private final flowRouter:Luf3;

.field private final reason:Lfi7;

.field private final waitingQueueReceiptQr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi7;Ljava/lang/String;JLuf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->reason:Lfi7;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->waitingQueueReceiptQr:Ljava/lang/String;

    iput-wide p3, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->chequeRequestId:J

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->flowRouter:Luf3;

    return-void
.end method

.method public synthetic constructor <init>(Lfi7;Ljava/lang/String;JLuf3;ILjh2;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;-><init>(Lfi7;Ljava/lang/String;JLuf3;)V

    return-void
.end method

.method private final onOpened()V
    .locals 5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->reason:Lfi7;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->chequeRequestId:J

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->waitingQueueReceiptQr:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v4, Ljf7;

    invoke-direct {v4, v2, v3, v1, p0}, Ljf7;-><init>(JLfi7;Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v1, 0x0

    aput-object v4, p0, v1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    const-string p0, "Argument waitingQueueReceiptId cannot be null\nif reason is Screens.SpecifyReason.AddCheque"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->onOpened()V

    return-void
.end method
