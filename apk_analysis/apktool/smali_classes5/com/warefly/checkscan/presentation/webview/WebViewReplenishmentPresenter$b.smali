.class public final Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->loadWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$b;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$b;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;

    if-eqz p1, :cond_0

    const-string v0, "https://scan.com.ru"

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;->loadReplenishment(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;->showSomeError()V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
