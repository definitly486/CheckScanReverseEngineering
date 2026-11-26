.class public final Lyads/y54;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/l34;


# direct methods
.method public constructor <init>(Lyads/l34;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y54;->a:Lyads/l34;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/util/Map;)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-static {p3}, Lyads/g34;->a(Lyads/o24;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lyads/y54;->a:Lyads/l34;

    sget-object v2, Lyads/e75;->h:Lyads/e75;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
