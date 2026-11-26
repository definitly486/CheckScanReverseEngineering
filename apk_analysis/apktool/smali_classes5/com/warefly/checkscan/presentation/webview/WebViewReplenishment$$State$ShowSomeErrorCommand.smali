.class public Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment$$State$ShowSomeErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSomeErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment$$State;)V
    .locals 1

    const-string p1, "showSomeError"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;->showSomeError()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment$$State$ShowSomeErrorCommand;->apply(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;)V

    return-void
.end method
