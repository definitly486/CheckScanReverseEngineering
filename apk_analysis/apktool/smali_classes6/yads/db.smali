.class public final Lyads/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lze4;


# instance fields
.field public final a:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/db;

    const-string v1, "adViewReference"

    const-string v2, "getAdViewReference()Lcom/monetization/ads/banner/InternalAdView;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/db;->b:[Lze4;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/banner/BannerAdView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/e55;

    invoke-direct {v0, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/db;->a:Lyads/e55;

    return-void
.end method
