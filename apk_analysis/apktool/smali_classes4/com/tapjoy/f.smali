.class public final Lcom/tapjoy/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJTaskHandler;

.field public final synthetic b:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>(Lcom/tapjoy/k;Lcom/tapjoy/TJTaskHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/f;->b:Lcom/tapjoy/k;

    iput-object p2, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TJTaskHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/f;->b:Lcom/tapjoy/k;

    iget-object v1, v1, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TJTaskHandler;

    iget-object v2, p0, Lcom/tapjoy/f;->b:Lcom/tapjoy/k;

    iget-object v2, v2, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TJTaskHandler;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting text zoom: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TJTaskHandler;

    invoke-interface {p0, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
