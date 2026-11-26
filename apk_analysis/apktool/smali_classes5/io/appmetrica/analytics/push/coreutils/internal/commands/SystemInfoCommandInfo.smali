.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;,
        Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;


# instance fields
.field private final a:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->a:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;-><init>(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getStatusChangeTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->a:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "STATUS_CHANGE_TIME_KEY"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method
