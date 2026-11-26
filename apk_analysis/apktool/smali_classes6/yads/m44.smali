.class public final Lyads/m44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/q34;


# instance fields
.field public final a:Lyads/e34;

.field public final b:Lyads/o44;


# direct methods
.method public constructor <init>(Lyads/e34;Lyads/o44;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/m44;->a:Lyads/e34;

    iput-object p2, p0, Lyads/m44;->b:Lyads/o44;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;)Lcom/monetization/ads/mediation/base/a;
    .locals 2

    .line 23
    iget-object v0, p0, Lyads/m44;->a:Lyads/e34;

    const-class v1, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {v0, p1, p2, v1}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance p2, Lyads/l44;

    iget-object p0, p0, Lyads/m44;->b:Lyads/o44;

    invoke-direct {p2, p1, p0}, Lyads/l44;-><init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;Lyads/o44;)V

    return-object p2
.end method

.method public final a(Lyads/x54;Ljava/lang/Class;)Z
    .locals 1

    iget-object p0, p1, Lyads/x54;->i:Lyads/cb5;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lyads/cb5;->b:Lyads/k54;

    sget-object v0, Lyads/k54;->e:Lyads/k54;

    if-ne p0, v0, :cond_1

    const-class p0, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method
