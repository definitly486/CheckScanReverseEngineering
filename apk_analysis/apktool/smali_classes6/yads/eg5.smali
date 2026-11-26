.class public final Lyads/eg5;
.super Lyads/z14;
.source "SourceFile"


# static fields
.field public static final j:Lyads/ag5;

.field public static final synthetic k:[Lze4;


# instance fields
.field public final d:Lyads/zf5;

.field public final e:Lyads/z14;

.field public final f:Lyads/ql5;

.field public final g:Lyads/e55;

.field public final h:Lyads/e55;

.field public final i:Lyads/dg5;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lyads/eg5;

    const-string v1, "weakMediaView"

    const-string v2, "getWeakMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "weakMediaValue"

    const-string v4, "getWeakMediaValue()Lcom/monetization/ads/network/model/MediaValue;"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v2

    const-string v4, "currentViewAdapter"

    const-string v5, "getCurrentViewAdapter()Lcom/monetization/ads/nativeads/assetadapter/viewadapter/MediaViewAdapter;"

    invoke-static {v0, v4, v5, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Lze4;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    sput-object v4, Lyads/eg5;->k:[Lze4;

    new-instance v0, Lyads/ag5;

    invoke-direct {v0}, Lyads/ag5;-><init>()V

    sput-object v0, Lyads/eg5;->j:Lyads/ag5;

    return-void
.end method

.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/zf5;Lyads/z14;Lyads/j24;Lyads/ql5;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lyads/z14;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/j24;)V

    iput-object p2, p0, Lyads/eg5;->d:Lyads/zf5;

    iput-object p3, p0, Lyads/eg5;->e:Lyads/z14;

    iput-object p5, p0, Lyads/eg5;->f:Lyads/ql5;

    new-instance p3, Lyads/e55;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lyads/eg5;->g:Lyads/e55;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p4}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lyads/eg5;->h:Lyads/e55;

    new-instance p3, Lyads/dg5;

    invoke-direct {p3, p2, p0}, Lyads/dg5;-><init>(Lyads/z14;Lyads/eg5;)V

    iput-object p3, p0, Lyads/eg5;->i:Lyads/dg5;

    new-instance p2, Lyads/bg5;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3}, Lyads/bg5;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, p2}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->setOnSizeChangedListener$mobileads_externalRelease(Lyads/gc0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 56
    iget-object v0, p0, Lyads/eg5;->i:Lyads/dg5;

    sget-object v1, Lyads/eg5;->k:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z14;

    .line 57
    invoke-virtual {p0}, Lyads/rf6;->a()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 53
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    .line 54
    iget-object v0, p0, Lyads/eg5;->d:Lyads/zf5;

    invoke-virtual {v0, p1}, Lyads/zf5;->a(Landroid/view/View;)V

    .line 55
    iget-object p0, p0, Lyads/eg5;->e:Lyads/z14;

    invoke-virtual {p0, p1}, Lyads/rf6;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lyads/eg5;->d:Lyads/zf5;

    .line 61
    iget-object v0, v0, Lyads/zf5;->d:Lyads/sf6;

    .line 62
    invoke-virtual {v0}, Lyads/sf6;->a()V

    .line 63
    iget-object p0, p0, Lyads/eg5;->e:Lyads/z14;

    invoke-virtual {p0, p1}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V
    .locals 3

    iget-object v0, p0, Lyads/eg5;->g:Lyads/e55;

    sget-object v1, Lyads/eg5;->k:[Lze4;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lyads/eg5;->h:Lyads/e55;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lyads/eg5;->i:Lyads/dg5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z14;

    invoke-virtual {p0, p1, p2}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 1

    .line 47
    check-cast p3, Lyads/v14;

    .line 48
    iget-object v0, p0, Lyads/eg5;->d:Lyads/zf5;

    invoke-virtual {v0, p1, p2, p3}, Lyads/zf5;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    .line 49
    iget-object p0, p0, Lyads/eg5;->e:Lyads/z14;

    invoke-virtual {p0, p1, p2, p3}, Lyads/rf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/v14;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lyads/eg5;->i:Lyads/dg5;

    sget-object v1, Lyads/eg5;->k:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z14;

    .line 59
    invoke-virtual {p0, p1}, Lyads/z14;->a(Lyads/v14;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .line 50
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lyads/v14;

    .line 51
    iget-object v0, p0, Lyads/eg5;->i:Lyads/dg5;

    sget-object v1, Lyads/eg5;->k:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z14;

    .line 52
    invoke-virtual {p0, p1, p2}, Lyads/rf6;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d()Lyads/y14;
    .locals 3

    iget-object v0, p0, Lyads/eg5;->i:Lyads/dg5;

    sget-object v1, Lyads/eg5;->k:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z14;

    invoke-virtual {p0}, Lyads/z14;->d()Lyads/y14;

    move-result-object p0

    return-object p0
.end method
