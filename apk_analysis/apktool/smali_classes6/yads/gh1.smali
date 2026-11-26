.class public final Lyads/gh1;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/hh1;

.field public final synthetic b:Lyads/nh1;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/hh1;Lyads/nh1;)V
    .locals 0

    iput-object p2, p0, Lyads/gh1;->a:Lyads/hh1;

    iput-object p3, p0, Lyads/gh1;->b:Lyads/nh1;

    invoke-direct {p0, p1}, Lyads/yh1;-><init>(Lyads/vq0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 34
    iget-object p0, p0, Lyads/gh1;->b:Lyads/nh1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/nh1;->setGifUrl$mobileads_externalRelease(Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Lyads/uw;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lyads/gh1;->a:Lyads/hh1;

    iget-object p0, p0, Lyads/gh1;->b:Lyads/nh1;

    invoke-static {v0, p0, p1}, Lyads/hh1;->a(Lyads/hh1;Lyads/nh1;Lyads/uw;)V

    return-void

    :cond_0
    iget-object v0, p0, Lyads/gh1;->b:Lyads/nh1;

    iget-object p1, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lyads/iu3;->setImage(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lyads/gh1;->b:Lyads/nh1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
