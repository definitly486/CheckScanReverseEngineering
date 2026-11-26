.class public final Lyads/k24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/yg6;

.field public final c:Lyads/xg6;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V
    .locals 2

    new-instance v0, Lyads/yg6;

    invoke-direct {v0, p1}, Lyads/yg6;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/xg6;

    invoke-direct {v1, p1, p3}, Lyads/xg6;-><init>(Landroid/content/Context;Lyads/bf5;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/k24;->a:Lyads/e4;

    iput-object v0, p0, Lyads/k24;->b:Lyads/yg6;

    iput-object v1, p0, Lyads/k24;->c:Lyads/xg6;

    iput-object p1, p0, Lyads/k24;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final a(Lyads/k24;Lyads/zg6;Lyads/vg6;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lyads/k24;->b:Lyads/yg6;

    invoke-virtual {v0, p1, p2}, Lyads/yg6;->a(Lyads/zg6;Lyads/vg6;)V

    .line 211
    iget-object p1, p0, Lyads/k24;->c:Lyads/xg6;

    iget-object p0, p0, Lyads/k24;->a:Lyads/e4;

    invoke-virtual {p1, p2, p0}, Lyads/xg6;->a(Lyads/vg6;Lyads/e4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lyads/k24;->a:Lyads/e4;

    iget-object v1, v0, Lyads/e4;->c:Lyads/ma;

    iget-object v1, v1, Lyads/ma;->a:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget v0, v0, Lyads/e4;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2}, Lyads/e46;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Lyads/e46;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getWidthMeasureSpec()I

    move-result v4

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4}, Lyads/e46;->a(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getHeightMeasureSpec()I

    move-result v5

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5}, Lyads/e46;->a(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getWidthMeasureSpec()I

    move-result v6

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v6, v8, :cond_4

    if-eqz v6, :cond_3

    if-eq v6, v7, :cond_2

    sget-object v6, Lyads/zx3;->d:Lyads/zx3;

    goto :goto_1

    :cond_2
    sget-object v6, Lyads/zx3;->b:Lyads/zx3;

    goto :goto_1

    :cond_3
    sget-object v6, Lyads/zx3;->d:Lyads/zx3;

    goto :goto_1

    :cond_4
    sget-object v6, Lyads/zx3;->c:Lyads/zx3;

    :goto_1
    invoke-virtual {p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getHeightMeasureSpec()I

    move-result v9

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-eq v9, v8, :cond_7

    if-eqz v9, :cond_6

    if-eq v9, v7, :cond_5

    sget-object v7, Lyads/zx3;->d:Lyads/zx3;

    goto :goto_2

    :cond_5
    sget-object v7, Lyads/zx3;->b:Lyads/zx3;

    goto :goto_2

    :cond_6
    sget-object v7, Lyads/zx3;->d:Lyads/zx3;

    goto :goto_2

    :cond_7
    sget-object v7, Lyads/zx3;->c:Lyads/zx3;

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v8}, Lyads/e46;->a(I)I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1}, Lyads/e46;->a(I)I

    move-result p1

    new-instance v9, Lb36;

    const-string v10, "asset"

    const-string v11, "media"

    invoke-direct {v9, v10, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lb36;

    const-string v11, "media_type"

    invoke-direct {v10, v11, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v10}, [Lb36;

    move-result-object p2

    invoke-static {p2}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p2

    new-instance v9, Lyads/vg6;

    new-instance v10, Lyads/ug6;

    invoke-direct {v10, v8, p1}, Lyads/ug6;-><init>(II)V

    new-instance p1, Lyads/vr3;

    invoke-direct {p1, v2, v3}, Lyads/vr3;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v2, Lyads/xx3;

    new-instance v3, Lyads/yx3;

    invoke-direct {v3, v4, v6}, Lyads/yx3;-><init>(ILyads/zx3;)V

    new-instance v4, Lyads/yx3;

    invoke-direct {v4, v5, v7}, Lyads/yx3;-><init>(ILyads/zx3;)V

    invoke-direct {v2, v3, v4}, Lyads/xx3;-><init>(Lyads/yx3;Lyads/yx3;)V

    invoke-direct {v9, v10, p1, v2, p2}, Lyads/vg6;-><init>(Lyads/ug6;Lyads/vr3;Lyads/xx3;Ljava/util/Map;)V

    new-instance p1, Lyads/zg6;

    invoke-direct {p1, v1, v0}, Lyads/zg6;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Lyads/k24;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lhu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v9, v1}, Lhu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
