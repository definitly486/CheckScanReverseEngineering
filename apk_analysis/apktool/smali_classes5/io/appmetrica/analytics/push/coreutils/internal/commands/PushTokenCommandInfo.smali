.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Builder;,
        Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjh2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getForce()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->c:Z

    return p0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->a:Ljava/lang/String;

    const-string v2, "TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->b:Ljava/lang/String;

    const-string v2, "PROVIDER_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->c:Z

    const-string v1, "FORCE"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
