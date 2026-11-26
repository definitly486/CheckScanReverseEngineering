.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendPushToken"
.end annotation


# static fields
.field public static final EXTRA_INFO:Ljava/lang/String; = "io.appmetrica.analytics.push.extra.EXTRA_INFO"

.field public static final INIT_PUSH_TOKEN_COMMAND_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.command.INIT_PUSH_TOKEN"

.field public static final INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;

.field public static final SEND_PUSH_TOKEN_MANUALLY_COMMAND_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_MANUALLY"

.field public static final SEND_PUSH_TOKEN_ON_REFRESH_COMMAND_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_ON_REFRESH"

.field public static final UPDATE_PUSH_TOKEN_COMMAND_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.command.UPDATE_PUSH_TOKEN"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$SendPushToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
