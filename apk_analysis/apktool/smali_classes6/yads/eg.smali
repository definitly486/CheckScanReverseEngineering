.class public final Lyads/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lze4;


# instance fields
.field public final a:Lyads/j95;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/eg;

    const-string v1, "proxyAdapter"

    const-string v2, "getProxyAdapter()Lcom/yandex/mobile/ads/common/analytics/varioqub/proxy/VarioqubProxyAdapter;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/eg;->b:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/lg;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llu9;

    invoke-direct {v0, p1, p2}, Llu9;-><init>(Lyads/lg;Landroid/content/Context;)V

    new-instance p1, Lyads/j95;

    invoke-direct {p1, v0}, Lyads/j95;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/eg;->a:Lyads/j95;

    return-void
.end method

.method public static final a(Lyads/lg;Landroid/content/Context;)Lyads/wm0;
    .locals 1

    invoke-virtual {p0}, Lyads/lg;->c()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Lyads/xm0;->a(Landroid/content/Context;)Lyads/wm0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method
