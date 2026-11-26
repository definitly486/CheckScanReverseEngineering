.class public final Lcom/my/target/common/views/Html5View$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/common/views/Html5View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/common/views/Html5View;


# direct methods
.method public constructor <init>(Lcom/my/target/common/views/Html5View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/common/views/Html5View$c;->a:Lcom/my/target/common/views/Html5View;

    return-void
.end method


# virtual methods
.method public onCTAClicked()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lnx3;

    invoke-direct {v0, p0}, Lnx3;-><init>(Lcom/my/target/common/views/Html5View$c;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance p0, Lmx3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInteractiveFailedToLoad(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/my/target/common/views/Html5View$c;->a:Lcom/my/target/common/views/Html5View;

    iget-object p1, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {p1}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/my/target/common/views/Html5View;->e:I

    new-instance p0, Llx3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lw4a;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInteractiveFinished()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lnx3;

    invoke-direct {v0, p0}, Lnx3;-><init>(Lcom/my/target/common/views/Html5View$c;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInteractiveLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/my/target/common/views/Html5View$c;->a:Lcom/my/target/common/views/Html5View;

    iget-object v0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {v0}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/common/views/Html5View;->e:I

    new-instance p0, Lox3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lw4a;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInteractiveStarted()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lnx3;

    invoke-direct {v0, p0}, Lnx3;-><init>(Lcom/my/target/common/views/Html5View$c;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method
