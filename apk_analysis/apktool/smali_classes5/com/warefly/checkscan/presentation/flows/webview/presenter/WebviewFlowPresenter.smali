.class public final Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Webview;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/Deeplink$Webview;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 7

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Ltf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    const/16 v3, 0xf0

    invoke-direct/range {v1 .. v6}, Ltf7;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
