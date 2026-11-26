.class public abstract Lio/appmetrica/analytics/impl/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lio/appmetrica/analytics/AdType;->NATIVE:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb36;

    invoke-direct {v2, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->BANNER:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lb36;

    invoke-direct {v3, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->REWARDED:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lb36;

    invoke-direct {v4, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->INTERSTITIAL:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lb36;

    invoke-direct {v5, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->MREC:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lb36;

    invoke-direct {v6, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->APP_OPEN:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lb36;

    invoke-direct {v7, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/AdType;->OTHER:Lio/appmetrica/analytics/AdType;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lb36;

    invoke-direct {v8, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v8}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/G;->a:Ljava/util/Map;

    return-void
.end method
