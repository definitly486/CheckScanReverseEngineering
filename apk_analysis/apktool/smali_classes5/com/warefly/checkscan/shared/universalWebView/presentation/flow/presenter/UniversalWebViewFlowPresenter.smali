.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Lv69;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-direct {v1, p0}, Lv69;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
