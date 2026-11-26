.class public final Lyads/jr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k13;


# instance fields
.field public final a:Lyads/p10;

.field public final b:Lyads/q84;


# direct methods
.method public constructor <init>(Lyads/p10;Lyads/q84;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jr3;->a:Lyads/p10;

    iput-object p2, p0, Lyads/jr3;->b:Lyads/q84;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/h80;)Lyads/mr3;
    .locals 5

    invoke-interface {p3}, Lyads/pg4;->getAdAssets()Lyads/f80;

    move-result-object p2

    sget v0, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_internal_landscape_vertical_icon_size:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    new-instance v1, Lyads/v40;

    new-instance v2, Lyads/y40;

    invoke-direct {v2, p2, v0}, Lyads/y40;-><init>(Lyads/f80;I)V

    iget-object v0, p0, Lyads/jr3;->a:Lyads/p10;

    iget-object p0, p0, Lyads/jr3;->b:Lyads/q84;

    invoke-static {p3, p4, p5, v0, p0}, Lyads/d40;->a(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/p10;Lyads/q84;)Lyads/v40;

    move-result-object p0

    new-instance p4, Lyads/cy3;

    invoke-direct {p4, p2}, Lyads/cy3;-><init>(Lyads/f80;)V

    new-instance p5, Lyads/ev4;

    invoke-direct {p5, p2}, Lyads/ev4;-><init>(Lyads/f80;)V

    new-instance p2, Lyads/gj6;

    invoke-direct {p2}, Lyads/gj6;-><init>()V

    new-instance v0, Lyads/tx;

    invoke-direct {v0, p3}, Lyads/tx;-><init>(Lyads/pg4;)V

    const/4 v3, 0x6

    new-array v3, v3, [Lyads/on0;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p0, v3, v2

    const/4 p0, 0x2

    aput-object p4, v3, p0

    const/4 p4, 0x3

    aput-object p5, v3, p4

    const/4 p4, 0x4

    aput-object p2, v3, p4

    const/4 p2, 0x5

    aput-object v0, v3, p2

    invoke-direct {v1, v3}, Lyads/v40;-><init>([Lyads/on0;)V

    invoke-interface {p3}, Lyads/pg4;->getAdAssets()Lyads/f80;

    move-result-object p2

    sget p3, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_internal_landscape_vertical_media_content_min_width:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    new-instance p3, Lyads/w40;

    new-instance p4, Lyads/zq4;

    invoke-direct {p4, p0}, Lyads/zq4;-><init>(I)V

    new-instance p5, Lyads/jy3;

    invoke-direct {p5, p2, p1}, Lyads/jy3;-><init>(Lyads/f80;I)V

    new-array p0, p0, [Lyads/pn0;

    aput-object p4, p0, v4

    aput-object p5, p0, v2

    invoke-direct {p3, p0}, Lyads/w40;-><init>([Lyads/pn0;)V

    new-instance p0, Lyads/mr3;

    sget p1, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_native_interstitial_landscape_vetrical_media:I

    invoke-direct {p0, p1, v1, p3}, Lyads/mr3;-><init>(ILyads/on0;Lyads/pn0;)V

    return-object p0
.end method
