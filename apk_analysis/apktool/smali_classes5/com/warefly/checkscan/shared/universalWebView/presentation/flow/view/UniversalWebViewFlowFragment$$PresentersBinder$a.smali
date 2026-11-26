.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;

    check-cast p2, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->presenter:Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->providePresenter()Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;

    move-result-object p0

    return-object p0
.end method
