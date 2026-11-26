.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessPush"
.end annotation


# static fields
.field public static final COMMAND_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.command.PROCESS_PUSH"

.field public static final INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/commands/Commands$ProcessPush;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
