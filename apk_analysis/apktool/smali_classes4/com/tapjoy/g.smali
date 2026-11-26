.class public final Lcom/tapjoy/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>(Lcom/tapjoy/k;F)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/g;->b:Lcom/tapjoy/k;

    iput p2, p0, Lcom/tapjoy/g;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/g;->b:Lcom/tapjoy/k;

    iget-object v0, v0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/g;->b:Lcom/tapjoy/k;

    iget-object v0, v0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget p0, p0, Lcom/tapjoy/g;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_0
    return-void
.end method
