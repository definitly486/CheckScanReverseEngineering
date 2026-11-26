.class public final Lio/appmetrica/analytics/idsync/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/f;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/e;->a:Lio/appmetrica/analytics/idsync/impl/f;

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/idsync/impl/c;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/e;->a:Lio/appmetrica/analytics/idsync/impl/f;

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/p;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/p;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/p;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/idsync/impl/c;)[B
    .locals 0

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/e;->a:Lio/appmetrica/analytics/idsync/impl/f;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/impl/p;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/c;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/e;->a:Lio/appmetrica/analytics/idsync/impl/f;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/impl/p;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/e;->a([B)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    return-object p0
.end method
