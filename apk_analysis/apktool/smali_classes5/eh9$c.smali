.class public final Leh9$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh9;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V
    .locals 0

    iput-object p1, p0, Leh9$c;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leh9$c;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
