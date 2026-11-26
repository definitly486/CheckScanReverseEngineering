.class public final Lcom/my/target/a2$a;
.super Lyy9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/a2;


# direct methods
.method public constructor <init>(Lcom/my/target/a2;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/a2$a;->a:Lcom/my/target/a2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/my/target/a2$a;->a:Lcom/my/target/a2;

    iget-boolean p1, p0, Lcom/my/target/a2;->e:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/my/target/a2;->e:Z

    iget-object v0, p0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const-string v1, "default"

    iput-object v1, v0, Lcom/my/target/w0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/my/target/w0;->j()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v5

    and-int/2addr v5, p2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const-string v3, "\'inlineVideo\'"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_4
    :goto_1
    const-string v3, "\'vpaid\'"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mraidbridge.setSupports("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mraidbridge.setPlacementType("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "interstitial"

    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lcom/my/target/yc;->f:Z

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p2}, Lcom/my/target/a2;->f(Z)V

    invoke-virtual {v0, v1}, Lcom/my/target/w0;->g(Ljava/lang/String;)V

    const-string p2, "mraidbridge.fireReadyEvent()"

    invoke-virtual {p0, p2}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/my/target/w0;->e:Loha;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mraidbridge.setScreenSize("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Loha;->b:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/my/target/a2;->g(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");window.mraidbridge.setMaxSize("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Loha;->h:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/my/target/a2;->g(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");window.mraidbridge.setCurrentPosition("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Loha;->d:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/my/target/a2;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ");window.mraidbridge.setDefaultPosition("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Loha;->f:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/my/target/a2;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.fireSizeChangeEvent("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/my/target/a2;->g(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz p0, :cond_6

    iget-object p2, v0, Lcom/my/target/w0;->o:Lwv9;

    if-eqz p2, :cond_6

    iget-object v1, v0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    invoke-interface {p0, p2, v1}, Lcom/my/target/t1$a;->o(Lao9;Landroid/view/View;)V

    iget-object p0, v0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    invoke-interface {p0, p1}, Lcom/my/target/g1$a;->c(Landroid/webkit/WebView;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MraidBridge: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/my/target/a2$a;->a:Lcom/my/target/a2;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/my/target/a2;->b(Landroid/net/Uri;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/a2$a;->a:Lcom/my/target/a2;

    invoke-virtual {p0, p1}, Lcom/my/target/a2;->b(Landroid/net/Uri;)V

    const/4 p0, 0x1

    return p0
.end method
