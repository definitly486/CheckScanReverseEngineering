.class public abstract Lyads/zc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e85;

.field public b:I

.field public final c:Lyads/sn4;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Landroid/os/Handler;

.field public g:Lyads/vc3;


# direct methods
.method public constructor <init>(Lyads/e85;Lyads/sn4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lyads/zc3;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/zc3;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/zc3;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyads/zc3;->f:Landroid/os/Handler;

    iput-object p1, p0, Lyads/zc3;->a:Lyads/e85;

    iput-object p2, p0, Lyads/zc3;->c:Lyads/sn4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/yc3;II)Lyads/xc3;
    .locals 10

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    move-object v0, p0

    check-cast v0, Lyads/vl5;

    iget-object v0, v0, Lyads/vl5;->h:Lyads/zb3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5}, Lyads/zb3;->a(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lyads/zc3;->c:Lyads/sn4;

    invoke-virtual {v0, v8}, Lyads/sn4;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lyads/xc3;

    invoke-direct {p1, p0, v0, v2, v2}, Lyads/xc3;-><init>(Lyads/zc3;Landroid/graphics/Bitmap;Ljava/lang/String;Lyads/yc3;)V

    invoke-interface {p2, p1, v1}, Lyads/yc3;->a(Lyads/xc3;Z)V

    return-object p1

    :cond_0
    new-instance v9, Lyads/xc3;

    invoke-direct {v9, p0, v2, v8, p2}, Lyads/xc3;-><init>(Lyads/zc3;Landroid/graphics/Bitmap;Ljava/lang/String;Lyads/yc3;)V

    invoke-interface {p2, v9, v1}, Lyads/yc3;->a(Lyads/xc3;Z)V

    iget-object p2, p0, Lyads/zc3;->d:Ljava/util/HashMap;

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/wc3;

    if-nez p2, :cond_1

    iget-object p2, p0, Lyads/zc3;->e:Ljava/util/HashMap;

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/wc3;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p2, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9

    :cond_2
    new-instance v0, Lyads/id3;

    new-instance v2, Lyads/tc3;

    invoke-direct {v2, p0, v8}, Lyads/tc3;-><init>(Lyads/zc3;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lyads/uc3;

    invoke-direct {v7, p0, v8}, Lyads/uc3;-><init>(Lyads/zc3;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lyads/id3;-><init>(Ljava/lang/String;Lyads/tc3;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lyads/uc3;)V

    iget-object p1, p0, Lyads/zc3;->a:Lyads/e85;

    invoke-virtual {p1, v0}, Lyads/e85;->a(Lyads/r75;)V

    iget-object p0, p0, Lyads/zc3;->d:Ljava/util/HashMap;

    new-instance p1, Lyads/wc3;

    invoke-direct {p1, v0, v9}, Lyads/wc3;-><init>(Lyads/id3;Lyads/xc3;)V

    invoke-virtual {p0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_3
    const-string p0, "Must be invoked from the main thread."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method
