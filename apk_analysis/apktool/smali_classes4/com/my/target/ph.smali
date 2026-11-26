.class public final Lcom/my/target/ph;
.super Lcom/my/target/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ph$b;,
        Lcom/my/target/ph$c;,
        Lcom/my/target/ph$a;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/my/target/h1;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/my/target/ph;->g:J

    new-instance p1, Lcom/my/target/ph$b;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Lcom/my/target/ph$c;

    invoke-direct {v0, p0}, Lcom/my/target/ph$c;-><init>(Lcom/my/target/ph;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v1, Lo5a;

    invoke-direct {v1, p0}, Lo5a;-><init>(Lcom/my/target/ph;)V

    invoke-virtual {p0, v1}, Lcom/my/target/h1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v2}, Lcom/my/target/h1;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/my/target/h1;->setVerticalScrollBarEnabled(Z)V

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/my/target/h1;->setWebViewBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/my/target/h1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/h1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v0}, Lcom/my/target/h1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public getAndResetInteractionEnd()J
    .locals 4

    iget-wide v0, p0, Lcom/my/target/ph;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/my/target/ph;->g:J

    return-wide v0
.end method

.method public setListener(Lcom/my/target/ph$a;)V
    .locals 0

    return-void
.end method
