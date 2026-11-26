.class public final Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g14;


# instance fields
.field private final a:Lyads/gk0;

.field private final b:Lyads/vc0;

.field private c:Lyads/sk0;

.field private final d:Lyads/dk0;

.field private final e:Lyads/ll0;

.field private final f:J


# direct methods
.method public constructor <init>(Lyads/vc0;)V
    .locals 2

    new-instance v0, Lyads/gk0;

    invoke-direct {v0, p1}, Lyads/gk0;-><init>(Lyads/vc0;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->a:Lyads/gk0;

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->b:Lyads/vc0;

    new-instance p1, Lyads/sk0;

    invoke-direct {p1}, Lyads/sk0;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->c:Lyads/sk0;

    new-instance p1, Lyads/ll0;

    invoke-direct {p1}, Lyads/ll0;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->e:Lyads/ll0;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->f:J

    new-instance p1, Lyads/dk0;

    invoke-direct {p1}, Lyads/dk0;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->d:Lyads/dk0;

    return-void
.end method


# virtual methods
.method public final a(Lyads/p04;)Lyads/cs;
    .locals 13

    iget-object v0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/mc0;

    invoke-direct {v0}, Lyads/mc0;-><init>()V

    iget-object v1, p1, Lyads/p04;->c:Lyads/k04;

    iget-object v1, v1, Lyads/k04;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lyads/fx2;

    invoke-direct {v2, v0, v1}, Lyads/fx2;-><init>(Lyads/mc0;Ljava/util/List;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    new-instance v3, Lcom/monetization/ads/exo/source/dash/i;

    iget-object v5, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->b:Lyads/vc0;

    iget-object v7, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->a:Lyads/gk0;

    iget-object v8, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->d:Lyads/dk0;

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->c:Lyads/sk0;

    invoke-virtual {v0, p1}, Lyads/sk0;->a(Lyads/p04;)Lyads/xl2;

    move-result-object v9

    iget-object v10, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->e:Lyads/ll0;

    iget-wide v11, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->f:J

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/monetization/ads/exo/source/dash/i;-><init>(Lyads/p04;Lyads/vc0;Lyads/it4;Lyads/gk0;Lyads/dk0;Lyads/xl2;Lyads/ll0;J)V

    return-object v3
.end method

.method public final a(Lyads/sk0;)Lyads/g14;
    .locals 0

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;->c:Lyads/sk0;

    return-object p0

    .line 52
    :cond_0
    const-string p0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
