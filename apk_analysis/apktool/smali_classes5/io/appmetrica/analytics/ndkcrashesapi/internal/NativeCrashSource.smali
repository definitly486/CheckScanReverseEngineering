.class public final enum Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field public static final enum UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field private static final synthetic a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field private static final synthetic b:Lg03;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    new-instance v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const-string v2, "CRASHPAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    filled-new-array {v0, v1}, [Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->b:Lg03;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->b:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    return-object v0
.end method
