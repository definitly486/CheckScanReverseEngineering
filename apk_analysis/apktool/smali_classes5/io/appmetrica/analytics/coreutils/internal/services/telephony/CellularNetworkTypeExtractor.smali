.class public final Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$Companion;,
        Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$a;,
        Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$b;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$Companion;

.field public static final UNKNOWN_NETWORK_TYPE_VALUE:Ljava/lang/String; = "unknown"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->Companion:Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->a:Landroid/content/Context;

    const/16 p1, 0x18

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$a;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$b;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor$b;-><init>()V

    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->b:Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->b:Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;

    const-string v1, "Extracting cellular networkType"

    const-string v2, "TelephonyManager"

    const-string v3, "phone"

    invoke-static {v0, v3, v1, v2, p0}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeConverter;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
