.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo69$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onPageStarted(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onPageFinished()V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onPageError()V

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onUrlLoading(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onPageError()V

    return-void
.end method
