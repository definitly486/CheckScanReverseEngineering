.class public final Lio/appmetrica/analytics/impl/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Zc;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Zc;

    new-instance v1, Lio/appmetrica/analytics/impl/do;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/do;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Zc;-><init>(Lio/appmetrica/analytics/impl/do;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/zb;-><init>(Lio/appmetrica/analytics/impl/Zc;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Zc;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Zc;

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/co;
    .locals 0

    .line 15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/co;)[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Zc;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Zc;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/co;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/zb;->a(Lio/appmetrica/analytics/impl/co;)[B

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
