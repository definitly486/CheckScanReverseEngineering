.class public final Lio/appmetrica/analytics/push/coreutils/internal/model/a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/a;->a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/a;->a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->getRoot()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "i"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/JsonUtils;->extractIntegerSafely(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;->fromValue(I)Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->UNKNOWN:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    return-object p0
.end method
