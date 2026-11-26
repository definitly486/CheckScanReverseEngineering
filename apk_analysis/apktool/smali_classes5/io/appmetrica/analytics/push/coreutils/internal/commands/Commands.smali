.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$InitPushService;,
        Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;,
        Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;,
        Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$UpdateSystemInfo;
    }
.end annotation


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "io.appmetrica.analytics.push.extra.COMMAND"

.field public static final EXTRA_COMMAND_RECEIVED_TIME:Ljava/lang/String; = "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

.field public static final INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
