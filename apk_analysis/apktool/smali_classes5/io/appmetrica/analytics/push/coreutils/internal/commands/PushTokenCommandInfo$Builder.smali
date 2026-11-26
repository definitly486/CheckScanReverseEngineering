.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    iget-object v1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->c:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjh2;)V

    return-object v0
.end method

.method public final withForce(Z)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->c:Z

    return-object p0
.end method

.method public final withToken(Ljava/lang/String;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
