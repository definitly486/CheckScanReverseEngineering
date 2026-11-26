.class public final Lyads/e24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t14;

.field public final b:Lyads/zb4;

.field public final c:Lyads/f24;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/t14;

    invoke-direct {v0}, Lyads/t14;-><init>()V

    new-instance v1, Lyads/zb4;

    invoke-direct {v1}, Lyads/zb4;-><init>()V

    new-instance v2, Lyads/f24;

    invoke-direct {v2}, Lyads/f24;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/e24;->a:Lyads/t14;

    iput-object v1, p0, Lyads/e24;->b:Lyads/zb4;

    iput-object v2, p0, Lyads/e24;->c:Lyads/f24;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/by3;Lyads/we3;Lyads/lm4;Lyads/j24;)Lyads/xf5;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lyads/e24;->b:Lyads/zb4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/gc4;->c:Lyads/fc4;

    invoke-virtual {v1, v0}, Lyads/fc4;->a(Landroid/content/Context;)Lyads/gc4;

    move-result-object v1

    iget-object v1, v1, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/vb4;

    if-nez p2, :cond_1

    new-instance p2, Lyads/xj6;

    invoke-direct {p2}, Lyads/xj6;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lyads/vb4;

    invoke-direct {v2, v0, p2, v1}, Lyads/vb4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v2

    goto :goto_0

    :catchall_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lyads/bk6;

    invoke-direct {p0}, Lyads/bk6;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p2, Lyads/vb4;->k:Lyads/kb4;

    iget-object v1, v0, Lyads/kb4;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v0, Lyads/kb4;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v0, Lyads/kb4;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lyads/e24;->a:Lyads/t14;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Lyads/xt2;->e:Lyads/xt2;

    invoke-static {p3, p4}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lyads/e24;->c:Lyads/f24;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyads/xb4;

    invoke-direct {p3, p2}, Lyads/xb4;-><init>(Lyads/vb4;)V

    iget-object p0, p0, Lyads/e24;->c:Lyads/f24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/xf5;

    invoke-direct {p0, p1, p3, p5}, Lyads/xf5;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/xb4;Lyads/j24;)V

    return-object p0
.end method
