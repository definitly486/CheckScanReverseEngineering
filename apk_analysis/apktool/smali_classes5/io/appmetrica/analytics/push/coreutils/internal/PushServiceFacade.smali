.class public final Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

.field private static a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initPushService(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v1, "io.appmetrica.analytics.push.command.INIT_PUSH_SERVICE"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand$default(Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;Landroid/content/Context;Landroid/os/Bundle;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final initToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v1, "io.appmetrica.analytics.push.command.INIT_PUSH_TOKEN"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->build()Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand$default(Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;Landroid/content/Context;Landroid/os/Bundle;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final processPush(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v2, "io.appmetrica.analytics.push.command.PROCESS_PUSH"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "io.appmetrica.analytics.push.extra.TRANSPORT"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->getProcessingMinTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p2, "io.appmetrica.analytics.push.extra.MIN_PROCESSING_DELAY"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->isOwnPush()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->getServiceType()Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    move-result-object p1

    sget-object v1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, p0, v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V

    :cond_2
    return-void
.end method

.method public static final sendSystemInfo(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v1, "io.appmetrica.analytics.push.command.UPDATE_SYSTEM_INFO"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;->withStatusChangeTime(Ljava/lang/Long;)Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;->build()Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand$default(Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;Landroid/content/Context;Landroid/os/Bundle;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v2, "io.appmetrica.analytics.push.command.UPDATE_PUSH_TOKEN"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->withToken(Ljava/lang/String;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->build()Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final sendTokenManually(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v2, "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_MANUALLY"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->withToken(Ljava/lang/String;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->build()Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final sendTokenOnRefresh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "io.appmetrica.analytics.push.extra.COMMAND"

    const-string v2, "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_ON_REFRESH"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->withToken(Ljava/lang/String;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->build()Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final setJobIntentServiceWrapper(Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->a:Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;

    return-void
.end method
