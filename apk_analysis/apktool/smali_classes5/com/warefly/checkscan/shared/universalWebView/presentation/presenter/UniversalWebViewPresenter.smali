.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

.field private currentUrl:Ljava/lang/String;

.field private hasPageError:Z

.field private hasRenderedPage:Z

.field private final router:Lt69;

.field private final urlResolver:Lhg9;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;Lhg9;Lt69;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iput-object p2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->urlResolver:Lhg9;

    iput-object p3, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->router:Lt69;

    iget-object p1, p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->currentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBackClicked(Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->goBackInHistory()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->router:Lt69;

    invoke-interface {p0}, Lt69;->a()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onPageError()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasPageError:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasRenderedPage:Z

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->stopRefreshing()V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showError(Z)V

    :cond_2
    return-void
.end method

.method public final onPageFinished()V
    .locals 2

    iget-boolean v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasPageError:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasRenderedPage:Z

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showLoading(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->stopRefreshing()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onPageStarted(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->currentUrl:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasPageError:Z

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showError(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasRenderedPage:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showLoading(Z)V

    :cond_2
    return-void
.end method

.method public final onRefreshRequested()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showError(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->currentUrl:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onTitleReceived(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->args:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->hasPageError:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showTitle(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onTryAgainClicked()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showError(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->currentUrl:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onUrlLoading(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->urlResolver:Lhg9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Leg9;->c:Leg9;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    const-string v3, ":"

    invoke-static {p1, v3, v1, v1, v2}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    sget-object v3, Lhg9;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lgg9;

    invoke-direct {v2, p1}, Lgg9;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v2, Lfg9;

    invoke-direct {v2, p1}, Lfg9;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    instance-of p1, v2, Lgg9;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_8

    check-cast v2, Lgg9;

    iget-object p1, v2, Lgg9;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->openIntentScheme(Ljava/lang/String;)V

    return v0

    :cond_7
    instance-of p1, v2, Lfg9;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    if-eqz p0, :cond_8

    check-cast v2, Lfg9;

    iget-object p1, v2, Lfg9;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->openInExternalApp(Ljava/lang/String;)V

    :cond_8
    return v0

    :cond_9
    invoke-static {}, Lme0;->e()V

    return v1
.end method
