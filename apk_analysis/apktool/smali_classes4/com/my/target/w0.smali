.class public final Lcom/my/target/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/g1;


# instance fields
.field public final b:Ld9a;

.field public final c:Lbn9;

.field public final d:Lcom/my/target/d3;

.field public final e:Loha;

.field public final f:Lcom/my/target/a2;

.field public final g:Ljava/lang/ref/WeakReference;

.field public final h:Landroid/content/Context;

.field public final i:Lcom/my/target/m;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Integer;

.field public l:Lcom/my/target/v;

.field public m:Lcom/my/target/yc;

.field public n:Lcom/my/target/g1$a;

.field public o:Lwv9;

.field public p:Z

.field public q:J

.field public r:J

.field public s:Z

.field public t:Z

.field public u:Ljfa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/my/target/a2;

    invoke-direct {v0}, Lcom/my/target/a2;-><init>()V

    new-instance v1, Lcom/my/target/d3;

    invoke-direct {v1, p1}, Lcom/my/target/d3;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lw4a;->g:Landroid/os/Handler;

    new-instance v3, Ld9a;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v2}, Ld9a;-><init>(ILandroid/os/Handler;)V

    iput-object v3, p0, Lcom/my/target/w0;->b:Ld9a;

    new-instance v2, Lbn9;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lbn9;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/my/target/w0;->c:Lbn9;

    iput-boolean v3, p0, Lcom/my/target/w0;->t:Z

    new-instance v2, Ljfa;

    invoke-direct {v2}, Ljfa;-><init>()V

    iput-object v2, p0, Lcom/my/target/w0;->u:Ljfa;

    iput-object v0, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/w0;->h:Landroid/content/Context;

    iput-object v1, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    :goto_0
    const-string v2, "loading"

    iput-object v2, p0, Lcom/my/target/w0;->j:Ljava/lang/String;

    new-instance v2, Loha;

    invoke-direct {v2}, Loha;-><init>()V

    iput-object v2, p0, Lcom/my/target/w0;->e:Loha;

    new-instance v2, Lzi4;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lzi4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/my/target/d3;->setOnCloseListener(Lcom/my/target/d3$a;)V

    new-instance v1, Lcom/my/target/m;

    invoke-direct {v1, p1}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/w0;->i:Lcom/my/target/m;

    iput-object p0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/w0;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w0;->c:Lbn9;

    invoke-virtual {v0, v1}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/my/target/w0;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/w0;->p:Z

    if-gtz p1, :cond_0

    iget-object v1, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/my/target/yc;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    iget-object v1, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/my/target/h1;->a(I)V

    iput-object v2, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 7

    iget-object v0, p0, Lcom/my/target/w0;->o:Lwv9;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lup9;

    new-instance v1, Ld6a;

    invoke-direct {v1}, Le6a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/my/target/w0;->o:Lwv9;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v5

    iget-object p0, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/my/target/t1$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final c(Ljfa;)Z
    .locals 5

    iget-object v0, p1, Ljfa;->b:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget p0, p1, Ljfa;->a:I

    if-ne v2, p0, :cond_3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_3

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_3

    return v1

    :catchall_0
    :cond_3
    :goto_1
    return v0
.end method

.method public final d(I)Z
    .locals 2

    iget-object v0, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/w0;->u:Ljfa;

    invoke-virtual {p0, v1}, Lcom/my/target/w0;->c(Ljfa;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/my/target/w0;->u:Ljfa;

    iget-object p1, p1, Ljfa;->b:Ljava/lang/String;

    const-string v0, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setOrientationProperties"

    iget-object p0, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {p0, v0, p1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/w0;->a(I)V

    return-void
.end method

.method public final e(Lcom/my/target/g1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    return-void
.end method

.method public final f(Lwv9;)V
    .locals 12

    iput-object p1, p0, Lcom/my/target/w0;->o:Lwv9;

    iget v0, p1, Ljia;->S:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v2, v0

    iput-wide v2, p0, Lcom/my/target/w0;->q:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    const/4 v5, 0x0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "InterstitialHtmlPresenter: Banner will be allowed to close in "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Ljia;->S:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Ljia;->S:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/my/target/w0;->q:J

    iget-object v0, p0, Lcom/my/target/w0;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w0;->c:Lbn9;

    invoke-virtual {v0, v1}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/w0;->r:J

    iget-object v0, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/my/target/t1$a;->a(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "InterstitialMraidPresenter: Banner is allowed to close"

    invoke-static {v5, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/my/target/d3;->setCloseVisible(Z)V

    :cond_1
    :goto_0
    iget-object v8, p1, Lwv9;->X:Ljava/lang/String;

    iget-object v1, p0, Lcom/my/target/w0;->h:Landroid/content/Context;

    if-eqz v8, :cond_5

    new-instance v0, Lcom/my/target/yc;

    invoke-direct {v0, v1}, Lcom/my/target/yc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    iget-object v6, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    iput-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    invoke-virtual {v0}, Lcom/my/target/h1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, v6, Lcom/my/target/a2;->a:Ljava/lang/String;

    const-string v7, "interstitial"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_2
    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    invoke-virtual {v0, v2}, Lcom/my/target/h1;->setScrollContainer(Z)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    invoke-virtual {v0, v2}, Lcom/my/target/h1;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    invoke-virtual {v0, v2}, Lcom/my/target/h1;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    iget-object v3, v6, Lcom/my/target/a2;->b:Lcom/my/target/a2$a;

    invoke-virtual {v0, v3}, Lcom/my/target/h1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    new-instance v3, Lcom/my/target/a2$b;

    invoke-direct {v3, v6}, Lcom/my/target/a2$b;-><init>(Lcom/my/target/a2;)V

    invoke-virtual {v0, v3}, Lcom/my/target/h1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    new-instance v3, Lcom/my/target/a2$c;

    invoke-direct {v3, v6}, Lcom/my/target/a2$c;-><init>(Lcom/my/target/a2;)V

    invoke-virtual {v0, v3}, Lcom/my/target/yc;->setVisibilityChangedListener(Lcom/my/target/yc$a;)V

    iget-object v0, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-nez v0, :cond_3

    const-string v0, "MraidBridge: MRAID bridge called setContentHtml before WebView was attached"

    invoke-static {v5, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-boolean v2, v6, Lcom/my/target/a2;->e:Z

    const-string v7, "https://ad.mail.ru/"

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    iget-object v6, v0, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    iget-object v0, p1, Lao9;->H:Lcom/my/target/q;

    iget-object v2, p0, Lcom/my/target/w0;->i:Lcom/my/target/m;

    if-nez v0, :cond_6

    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0xa

    invoke-static {v3, v1}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/my/target/q;->a:Lh14;

    iget-object v1, v1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/my/target/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, La3a;

    invoke-direct {v1, p0}, La3a;-><init>(Lcom/my/target/w0;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_8

    :goto_2
    return-void

    :cond_8
    new-instance v1, Lex0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/my/target/v;

    invoke-direct {v2, v0, v1}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v2, p0, Lcom/my/target/w0;->l:Lcom/my/target/v;

    new-instance v0, Lcom/my/target/v0;

    invoke-direct {v0, p0, p1}, Lcom/my/target/v0;-><init>(Lcom/my/target/w0;Lwv9;)V

    iput-object v0, v2, Lcom/my/target/v;->c:Lgv9;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    const-string v0, "InterstitialMraidPresenter: MRAID state set to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/my/target/w0;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraidbridge.setState("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    const-string v0, "hidden"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InterstitialMraidPresenter: Mraid on close"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/w0;->o:Lwv9;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/my/target/t1$a;->e(Lao9;)V

    :cond_0
    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/my/target/w0;->j:Ljava/lang/String;

    const-string v1, "loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w0;->j:Ljava/lang/String;

    const-string v1, "hidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/my/target/w0;->j:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/my/target/w0;->g(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    return-object p0
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/my/target/w0;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p0, p0, Lcom/my/target/w0;->e:Loha;

    iget-object v3, p0, Loha;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Loha;->b:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Loha;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Loha;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Loha;->f:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Loha;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Loha;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Loha;->d:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Loha;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Loha;->g:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Loha;->h:Landroid/graphics/Rect;

    invoke-static {v2, p0}, Loha;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final pause()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/w0;->p:Z

    iget-object v0, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/yc;->d(Z)V

    :cond_0
    iget-wide v0, p0, Lcom/my/target/w0;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/my/target/w0;->r:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/my/target/w0;->q:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/my/target/w0;->q:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/my/target/w0;->q:J

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/my/target/w0;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w0;->c:Lbn9;

    invoke-virtual {v0, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/w0;->p:Z

    iget-object v1, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/my/target/w0;->q:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/my/target/w0;->b:Ld9a;

    iget-object v2, p0, Lcom/my/target/w0;->c:Lbn9;

    invoke-virtual {v1, v2}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/my/target/w0;->r:J

    iget-object p0, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/my/target/t1$a;->a(Z)V

    :cond_2
    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/w0;->p:Z

    iget-object p0, p0, Lcom/my/target/w0;->m:Lcom/my/target/yc;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/yc;->d(Z)V

    :cond_0
    return-void
.end method
