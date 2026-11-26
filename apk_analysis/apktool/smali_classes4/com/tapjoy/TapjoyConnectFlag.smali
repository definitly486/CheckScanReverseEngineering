.class public Lcom/tapjoy/TapjoyConnectFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_LEGACY_ID_FALLBACK:Ljava/lang/String; = "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

.field public static final CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_ADVERTISING_ID:Ljava/lang/String; = "TJC_OPTION_DISABLE_ADVERTISING_ID"

.field public static final DISABLE_ADVERTISING_ID_CHECK:Ljava/lang/String; = "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

.field public static final DISABLE_AUTOMATIC_SESSION_TRACKING:Ljava/lang/String; = "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

.field public static final DISABLE_PERSISTENT_IDS:Ljava/lang/String; = "TJC_OPTION_DISABLE_PERSISTENT_IDS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENABLE_LOGGING:Ljava/lang/String; = "TJC_OPTION_ENABLE_LOGGING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_ARRAY:[Ljava/lang/String;

.field public static final PLACEMENT_URL:Ljava/lang/String; = "TJC_OPTION_PLACEMENT_SERVICE_URL"

.field public static final SERVICE_URL:Ljava/lang/String; = "TJC_OPTION_SERVICE_URL"

.field public static final TJC_OPTION_LOGGING_LEVEL:Ljava/lang/String; = "TJC_OPTION_LOGGING_LEVEL"

.field public static final USER_ID:Ljava/lang/String; = "TJC_OPTION_USER_ID"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    const-string v5, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    const-string v0, "TJC_OPTION_USER_ID"

    const-string v1, "TJC_OPTION_ENABLE_LOGGING"

    const-string v2, "TJC_OPTION_SERVICE_URL"

    const-string v3, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/internal/q2;

    invoke-direct {v0}, Lcom/tapjoy/internal/q2;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
