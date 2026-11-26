.class public final Lio/appmetrica/analytics/idsync/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/e;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/h;->a:Lio/appmetrica/analytics/idsync/impl/e;

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;
    .locals 1

    .line 17
    sget-object v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/h;->a:Lio/appmetrica/analytics/idsync/impl/e;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/e;->a([B)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;->toWrapper$id_sync_release(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;)[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/h;->a:Lio/appmetrica/analytics/idsync/impl/e;

    invoke-virtual {p1}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->getConfig$id_sync_release()Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/e;->a:Lio/appmetrica/analytics/idsync/impl/f;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/impl/p;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/h;->a(Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;)[B

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [B

    sget-object v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/h;->a:Lio/appmetrica/analytics/idsync/impl/e;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/e;->a([B)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;->toWrapper$id_sync_release(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    move-result-object p0

    return-object p0
.end method
