.class public final Lyads/ao6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/rewarded/RewardedAd;


# instance fields
.field public final a:Lyads/ja5;

.field public final b:Lyads/gm6;


# direct methods
.method public constructor <init>(Lyads/ja5;)V
    .locals 1

    new-instance v0, Lyads/gm6;

    invoke-direct {v0}, Lyads/gm6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ao6;->a:Lyads/ja5;

    iput-object v0, p0, Lyads/ao6;->b:Lyads/gm6;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/ao6;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/ao6;

    iget-object p1, p1, Lyads/ao6;->a:Lyads/ja5;

    iget-object p0, p0, Lyads/ao6;->a:Lyads/ja5;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/ao6;->a:Lyads/ja5;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setAdEventListener(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V
    .locals 1

    new-instance v0, Lyads/bo6;

    invoke-direct {v0, p1}, Lyads/bo6;-><init>(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V

    iget-object p0, p0, Lyads/ao6;->a:Lyads/ja5;

    iget-object p1, p0, Lyads/ja5;->c:Lyads/fw3;

    invoke-virtual {p1}, Lyads/fw3;->a()V

    iget-object p0, p0, Lyads/ja5;->b:Lyads/s25;

    iput-object v0, p0, Lyads/s25;->c:Lyads/bo6;

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lyads/ao6;->a:Lyads/ja5;

    invoke-virtual {p0, p1}, Lyads/ja5;->a(Landroid/app/Activity;)V

    return-void
.end method
