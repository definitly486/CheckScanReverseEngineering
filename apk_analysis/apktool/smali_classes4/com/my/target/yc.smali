.class public Lcom/my/target/yc;
.super Lcom/my/target/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/yc$b;,
        Lcom/my/target/yc$a;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:Lcom/my/target/yc$a;

.field public f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/my/target/h1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/my/target/yc;->f:Z

    invoke-virtual {p0}, Lcom/my/target/h1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    new-instance p1, Lcom/my/target/yc$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/my/target/yc$b;-><init>(Landroid/content/Context;Lcom/my/target/yc;)V

    new-instance v0, Lk4;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lk4;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p1, Lcom/my/target/yc$b;->b:Lk4;

    new-instance v0, Lyha;

    invoke-direct {v0, p1}, Lyha;-><init>(Lcom/my/target/yc$b;)V

    invoke-virtual {p0, v0}, Lcom/my/target/h1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MraidWebView: Pause, finishing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->b(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/my/target/yc;->h:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/my/target/yc;->h:I

    iget-object v0, p0, Lcom/my/target/yc;->e:Lcom/my/target/yc$a;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/my/target/a2$c;

    iget-object v0, v0, Lcom/my/target/a2$c;->a:Lcom/my/target/a2;

    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/w0;->j()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/my/target/h1;->onMeasure(II)V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/my/target/yc;->f:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/my/target/yc;->f:Z

    iget-object p0, p0, Lcom/my/target/yc;->e:Lcom/my/target/yc$a;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/my/target/a2$c;

    iget-object p0, p0, Lcom/my/target/a2$c;->a:Lcom/my/target/a2;

    iget-object p0, p0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {p0, p1}, Lcom/my/target/a2;->f(Z)V

    :cond_1
    return-void
.end method

.method public setClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/my/target/yc;->g:Z

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/my/target/yc$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/yc;->e:Lcom/my/target/yc$a;

    return-void
.end method
