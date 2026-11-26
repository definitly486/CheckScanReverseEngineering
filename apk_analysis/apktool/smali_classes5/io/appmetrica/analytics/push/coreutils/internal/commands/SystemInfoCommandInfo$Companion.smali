.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;
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

    invoke-direct {p0}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;
    .locals 3

    new-instance p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;

    const-string v0, "STATUS_CHANGE_TIME_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-direct {p0, p1, v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;-><init>(Ljava/lang/Long;Ljh2;)V

    return-object p0
.end method
