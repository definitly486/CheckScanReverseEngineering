.class public final Lcom/tapjoy/e;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/e;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    iget-object v0, p0, Lcom/tapjoy/e;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    if-eqz v1, :cond_1

    const-string v1, "error"

    const-string v2, "not defined"

    const-string v3, "Uncaught"

    const-string v4, "uncaught"

    const-string v5, "Error"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/tapjoy/e;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->a(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-static {p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
