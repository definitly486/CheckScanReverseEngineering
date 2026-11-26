.class public final Lcom/my/target/common/views/Html5View;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/common/views/Html5View$c;,
        Lcom/my/target/common/views/Html5View$e;,
        Lcom/my/target/common/views/Html5View$g;,
        Lcom/my/target/common/views/Html5View$f;,
        Lcom/my/target/common/views/Html5View$b;,
        Lcom/my/target/common/views/Html5View$a;,
        Lcom/my/target/common/views/Html5View$d;
    }
.end annotation


# instance fields
.field public final b:Lcom/my/target/e1;

.field public final c:Lcom/my/target/common/views/Html5View$e;

.field public final d:Lcom/my/target/common/views/Html5View$c;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/my/target/common/views/Html5View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/common/views/Html5View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/my/target/common/views/Html5View$c;

    invoke-direct {p2, p0}, Lcom/my/target/common/views/Html5View$c;-><init>(Lcom/my/target/common/views/Html5View;)V

    iput-object p2, p0, Lcom/my/target/common/views/Html5View;->d:Lcom/my/target/common/views/Html5View$c;

    iput v0, p0, Lcom/my/target/common/views/Html5View;->e:I

    new-instance p3, Lcom/my/target/e1;

    invoke-direct {p3, p1}, Lcom/my/target/e1;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    new-instance p1, Lcom/my/target/common/views/Html5View$e;

    invoke-direct {p1}, Lcom/my/target/common/views/Html5View$e;-><init>()V

    iput-object p1, p0, Lcom/my/target/common/views/Html5View;->c:Lcom/my/target/common/views/Html5View$e;

    invoke-virtual {p3}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lvt9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    iget-object p1, p3, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "myTargetPlayableAds"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getIsLoaded()Z
    .locals 1

    iget p0, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/common/views/Html5View;->c:Lcom/my/target/common/views/Html5View$e;

    iget-object v1, v0, Lcom/my/target/common/views/Html5View$e;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/my/target/common/views/Html5View$e;->b:Lpx3;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/common/views/Html5View;->e:I

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {p0, p1}, Lcom/my/target/e1;->setData(Ljava/lang/String;)V

    return-void
.end method

.method public setHtmlCustomEventListener(Ltx3;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->d:Lcom/my/target/common/views/Html5View$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setHtmlInteractionListener(Lwx3;)V
    .locals 0

    new-instance p1, Lcom/my/target/common/views/Html5View$d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {p0, p1}, Lcom/my/target/e1;->setUserMotionEventListener(Lcom/my/target/e1$e;)V

    return-void
.end method

.method public setHtmlInteractiveProgressListener(Lxx3;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->d:Lcom/my/target/common/views/Html5View$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setHtmlLoadingListener(Lyx3;)V
    .locals 1

    new-instance p1, Lcom/my/target/common/views/Html5View$g;

    iget-object v0, p0, Lcom/my/target/common/views/Html5View;->c:Lcom/my/target/common/views/Html5View$e;

    invoke-direct {p1, p0, v0}, Lcom/my/target/common/views/Html5View$g;-><init>(Lcom/my/target/common/views/Html5View;Lcom/my/target/common/views/Html5View$e;)V

    iget-object v0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {v0, p1}, Lcom/my/target/e1;->setWebViewLoadingStartListener(Lcom/my/target/e1$h;)V

    new-instance p1, Lcom/my/target/common/views/Html5View$f;

    invoke-direct {p1, p0}, Lcom/my/target/common/views/Html5View$f;-><init>(Lcom/my/target/common/views/Html5View;)V

    invoke-virtual {v0, p1}, Lcom/my/target/e1;->setWebViewLoadingErrorListener(Lcom/my/target/e1$g;)V

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->d:Lcom/my/target/common/views/Html5View$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setLoadingTimeoutMillis(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->c:Lcom/my/target/common/views/Html5View$e;

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setWebViewBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->setWebViewBackgroundColor(I)V

    return-void
.end method

.method public setWebViewClickListener(Lcom/my/target/common/views/Html5View$a;)V
    .locals 1

    new-instance p1, Lcom/my/target/common/views/Html5View$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/my/target/common/views/Html5View;->b:Lcom/my/target/e1;

    invoke-virtual {v0, p1}, Lcom/my/target/e1;->setBannerWebViewListener(Lcom/my/target/e1$a;)V

    iget-object p0, p0, Lcom/my/target/common/views/Html5View;->d:Lcom/my/target/common/views/Html5View$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
