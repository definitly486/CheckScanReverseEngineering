.class public final Lcom/my/target/k1$a;
.super Lyy9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/k1;

.field public final b:Lzn9;


# direct methods
.method public constructor <init>(Lcom/my/target/k1;Lzn9;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/my/target/k1$a;->a:Lcom/my/target/k1;

    iput-object p2, p0, Lcom/my/target/k1$a;->b:Lzn9;

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p0, p0, Lcom/my/target/k1$a;->a:Lcom/my/target/k1;

    iget-object p1, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object p2, p1, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-boolean p1, p0, Lcom/my/target/r;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/my/target/r;->e:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/my/target/k1$a;->b:Lzn9;

    .line 19
    iget-boolean v0, v0, Lzn9;->a:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/my/target/k1$a;->a:Lcom/my/target/k1;

    invoke-virtual {p0}, Lcom/my/target/k1;->c()V

    const/4 p0, 0x1

    return p0

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/my/target/k1$a;->b:Lzn9;

    iget-boolean v0, v0, Lzn9;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/k1$a;->a:Lcom/my/target/k1;

    invoke-virtual {p0}, Lcom/my/target/k1;->c()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
