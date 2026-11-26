.class public final Lio/appmetrica/analytics/idsync/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/g;->a:Lio/appmetrica/analytics/idsync/impl/d;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/g;->a:Lio/appmetrica/analytics/idsync/impl/d;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/d;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;->toWrapper$id_sync_release(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/g;->a:Lio/appmetrica/analytics/idsync/impl/d;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/d;->parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/c;

    if-eqz p0, :cond_0

    sget-object p1, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;->toWrapper$id_sync_release(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    sget-object v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/g;->a:Lio/appmetrica/analytics/idsync/impl/d;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/d;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;->toWrapper$id_sync_release(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/g;->b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0
.end method
