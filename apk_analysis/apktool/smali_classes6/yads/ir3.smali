.class public final Lyads/ir3;
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

    iput-object p1, p0, Lyads/ir3;->a:Lyads/p10;

    iput-object p2, p0, Lyads/ir3;->b:Lyads/q84;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/h80;)Lyads/mr3;
    .locals 3

    invoke-interface {p3}, Lyads/pg4;->getAdAssets()Lyads/f80;

    move-result-object p2

    sget v0, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_internal_landscape_horizontal_icon_size:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    new-instance v0, Lyads/v40;

    new-instance v1, Lyads/y40;

    invoke-direct {v1, p2, p1}, Lyads/y40;-><init>(Lyads/f80;I)V

    iget-object p1, p0, Lyads/ir3;->a:Lyads/p10;

    iget-object p0, p0, Lyads/ir3;->b:Lyads/q84;

    invoke-static {p3, p4, p5, p1, p0}, Lyads/d40;->a(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/p10;Lyads/q84;)Lyads/v40;

    move-result-object p0

    new-instance p1, Lyads/cy3;

    invoke-direct {p1, p2}, Lyads/cy3;-><init>(Lyads/f80;)V

    new-instance p4, Lyads/ev4;

    invoke-direct {p4, p2}, Lyads/ev4;-><init>(Lyads/f80;)V

    new-instance p2, Lyads/gj6;

    invoke-direct {p2}, Lyads/gj6;-><init>()V

    new-instance p5, Lyads/tx;

    invoke-direct {p5, p3}, Lyads/tx;-><init>(Lyads/pg4;)V

    const/4 p3, 0x6

    new-array p3, p3, [Lyads/on0;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const/4 v1, 0x1

    aput-object p0, p3, v1

    const/4 p0, 0x2

    aput-object p1, p3, p0

    const/4 p1, 0x3

    aput-object p4, p3, p1

    const/4 p1, 0x4

    aput-object p2, p3, p1

    const/4 p1, 0x5

    aput-object p5, p3, p1

    invoke-direct {v0, p3}, Lyads/v40;-><init>([Lyads/on0;)V

    new-instance p1, Lyads/zq4;

    invoke-direct {p1, p0}, Lyads/zq4;-><init>(I)V

    new-instance p0, Lyads/mr3;

    sget p2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_native_interstitial_landscape_horizontal_media:I

    invoke-direct {p0, p2, v0, p1}, Lyads/mr3;-><init>(ILyads/on0;Lyads/pn0;)V

    return-object p0
.end method
