.class public final Lyads/qh4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:[Lze4;


# instance fields
.field public final a:Lyads/e55;

.field public final b:Lyads/e55;

.field public final c:Lyads/e55;

.field public final d:Lyads/e55;

.field public final e:Lyads/e55;

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lyads/qh4;

    const-string v1, "nativeAdView"

    const-string v2, "getNativeAdView()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v1

    const-string v2, "imageView"

    const-string v4, "getImageView()Landroid/widget/ImageView;"

    invoke-static {v0, v2, v4, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v2

    const-string v4, "muteButtonView"

    const-string v5, "getMuteButtonView()Landroid/widget/CheckBox;"

    invoke-static {v0, v4, v5, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v4

    const-string v5, "videoProgressView"

    const-string v6, "getVideoProgressView()Landroid/widget/ProgressBar;"

    invoke-static {v0, v5, v6, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v5

    const-string v6, "customAssets"

    const-string v7, "getCustomAssets()Ljava/util/List;"

    invoke-static {v0, v6, v7, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v6, 0x5

    new-array v6, v6, [Lze4;

    aput-object v1, v6, v3

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    const/4 v1, 0x4

    aput-object v0, v6, v1

    sput-object v6, Lyads/qh4;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/ph4;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/ph4;->a:Landroid/view/View;

    new-instance v1, Lyads/e55;

    invoke-direct {v1, v0}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/qh4;->a:Lyads/e55;

    new-instance v0, Lyads/e55;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/qh4;->b:Lyads/e55;

    iget-object v0, p1, Lyads/ph4;->b:Landroid/widget/CheckBox;

    new-instance v1, Lyads/e55;

    invoke-direct {v1, v0}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/qh4;->c:Lyads/e55;

    iget-object v0, p1, Lyads/ph4;->c:Landroid/widget/ProgressBar;

    new-instance v1, Lyads/e55;

    invoke-direct {v1, v0}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/qh4;->d:Lyads/e55;

    iget-object v0, p1, Lyads/ph4;->d:Ljava/util/List;

    new-instance v1, Lyads/e55;

    invoke-direct {v1, v0}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/qh4;->e:Lyads/e55;

    iget-object p1, p1, Lyads/ph4;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lyads/qh4;->f:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .line 19
    iget-object p0, p0, Lyads/qh4;->a:Lyads/e55;

    sget-object v0, Lyads/qh4;->g:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 20
    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    .line 22
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lyads/qh4;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
