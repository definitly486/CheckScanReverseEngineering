.class public final Lcom/my/target/ads/MyTargetView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/MyTargetView$a;,
        Lcom/my/target/ads/MyTargetView$b;,
        Lcom/my/target/ads/MyTargetView$c;
    }
.end annotation


# instance fields
.field public final b:Lz2a;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/my/target/ads/MyTargetView$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p3, p0, Lcom/my/target/ads/MyTargetView;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/my/target/ads/MyTargetView;->e:Z

    sget-object v0, Lsh5;->a:Ljava/lang/String;

    const-string v0, "MyTargetView created. Version - 5.52.5"

    invoke-static {v0}, Ly14;->t(Ljava/lang/String;)V

    new-instance v0, Lz2a;

    const-string v1, ""

    invoke-direct {v0, p3, v1}, Lz2a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    invoke-static {p1}, Lcom/my/target/ads/MyTargetView$a;->b(Landroid/content/Context;)Lcom/my/target/ads/MyTargetView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lvw6;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyTargetView: Unable to get view attributes - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    iput v1, v2, Lz2a;->e:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_6

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    iput-boolean v1, p0, Lcom/my/target/ads/MyTargetView;->e:Z

    :cond_2
    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_4

    if-eq p3, v2, :cond_3

    sget-object p1, Lcom/my/target/ads/MyTargetView$a;->d:Lcom/my/target/ads/MyTargetView$a;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/my/target/ads/MyTargetView$a;->b(Landroid/content/Context;)Lcom/my/target/ads/MyTargetView$a;

    move-result-object p1

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/my/target/ads/MyTargetView$a;->f:Lcom/my/target/ads/MyTargetView$a;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/my/target/ads/MyTargetView$a;->e:Lcom/my/target/ads/MyTargetView$a;

    :goto_2
    iput-object p1, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getAdSource()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdSourcePriority()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCustomParams()Lf72;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    iget-object p0, p0, Lz2a;->a:Lf72;

    return-object p0
.end method

.method public getListener()Lcom/my/target/ads/MyTargetView$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderCrashListener()Lcom/my/target/ads/MyTargetView$c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()Lcom/my/target/ads/MyTargetView$a;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    return-object p0
.end method

.method public getWebFormClient()Luf9;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    iget v4, v3, Lcom/my/target/ads/MyTargetView$a;->a:I

    if-ne v2, v4, :cond_0

    iget v2, v3, Lcom/my/target/ads/MyTargetView$a;->b:I

    int-to-float v2, v2

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/my/target/ads/MyTargetView$a;->b(Landroid/content/Context;)Lcom/my/target/ads/MyTargetView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAdNetworkConfig(Ljava/lang/String;Lb8;)V
    .locals 1

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    iget-object p0, p0, Lz2a;->b:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAdSize(Lcom/my/target/ads/MyTargetView$a;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "MyTargetView: AdSize cannot be null"

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/my/target/ads/MyTargetView;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    invoke-static {v1, p1}, Lcom/my/target/ads/MyTargetView$a;->a(Lcom/my/target/ads/MyTargetView$a;Lcom/my/target/ads/MyTargetView$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/my/target/ads/MyTargetView;->e:Z

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    sget-object v2, Lcom/my/target/ads/MyTargetView$a;->e:Lcom/my/target/ads/MyTargetView$a;

    invoke-static {v1, v2}, Lcom/my/target/ads/MyTargetView$a;->a(Lcom/my/target/ads/MyTargetView$a;Lcom/my/target/ads/MyTargetView$a;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, v2}, Lcom/my/target/ads/MyTargetView$a;->a(Lcom/my/target/ads/MyTargetView$a;Lcom/my/target/ads/MyTargetView$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string p0, "MyTargetView: unable to switch size to/from 300x250"

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/my/target/ads/MyTargetView;->d:Lcom/my/target/ads/MyTargetView$a;

    sget-object v0, Lcom/my/target/ads/MyTargetView$a;->d:Lcom/my/target/ads/MyTargetView$a;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    const-string p1, "standard_320x50"

    iput-object p1, p0, Lz2a;->f:Ljava/lang/String;

    return-void

    :cond_4
    sget-object v0, Lcom/my/target/ads/MyTargetView$a;->e:Lcom/my/target/ads/MyTargetView$a;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    const-string p1, "standard_300x250"

    iput-object p1, p0, Lz2a;->f:Ljava/lang/String;

    return-void

    :cond_5
    sget-object v0, Lcom/my/target/ads/MyTargetView$a;->f:Lcom/my/target/ads/MyTargetView$a;

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    if-ne p1, v0, :cond_6

    const-string p1, "standard_728x90"

    iput-object p1, p0, Lz2a;->f:Ljava/lang/String;

    return-void

    :cond_6
    const-string p1, "standard"

    iput-object p1, p0, Lz2a;->f:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/my/target/ads/MyTargetView$b;)V
    .locals 0

    return-void
.end method

.method public setMediationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    iput-boolean p1, p0, Lz2a;->c:Z

    return-void
.end method

.method public setRefreshAd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setRenderCrashListener(Lcom/my/target/ads/MyTargetView$c;)V
    .locals 0

    return-void
.end method

.method public setSlotId(I)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/ads/MyTargetView;->b:Lz2a;

    iput p1, p0, Lz2a;->e:I

    return-void
.end method

.method public setWebFormClient(Luf9;)V
    .locals 0

    return-void
.end method
