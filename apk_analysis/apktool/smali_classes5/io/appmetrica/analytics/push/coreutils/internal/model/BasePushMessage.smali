.class public Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/json/JSONObject;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yamp"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Ignore parse push message exception"

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->c:Z

    return-void
.end method


# virtual methods
.method public final getRoot()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final getRootString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isOwnPush()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->c:Z

    return p0
.end method
