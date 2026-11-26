.class public final Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$a;

.field private static final SCAN_WEBSITE:Ljava/lang/String; = "https://scan.com.ru"


# instance fields
.field private final bankInteractor:Lca0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->Companion:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$a;

    return-void
.end method

.method public constructor <init>(Lca0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->bankInteractor:Lca0;

    return-void
.end method

.method private final loadWebView()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->k()Lmz7;

    move-result-object v0

    sget-object v1, Lv9;->h:Lv9;

    new-instance v2, Lv90;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lv90;-><init>(Lnl3;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;->loadWebView()V

    return-void
.end method
