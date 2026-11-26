.class public final Lio/appmetrica/analytics/push/coreutils/impl/i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/impl/i;->a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/impl/i;->a:Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->getRoot()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "j"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/JsonUtils;->extractLongSafely(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
