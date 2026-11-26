.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;
    .locals 4

    new-instance p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    const-string v0, "TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PROVIDER_KEY"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FORCE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjh2;)V

    return-object p0
.end method
