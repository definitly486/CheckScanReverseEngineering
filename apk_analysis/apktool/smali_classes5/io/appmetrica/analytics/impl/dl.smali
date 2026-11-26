.class public final Lio/appmetrica/analytics/impl/dl;
.super Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/bl;
    .locals 0

    .line 12
    new-instance p0, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bl;-><init>()V

    return-object p0
.end method

.method public final a([B)Lio/appmetrica/analytics/impl/bl;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bl;-><init>()V

    invoke-static {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/bl;

    return-object p0
.end method

.method public final defaultValue()Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bl;-><init>()V

    return-object p0
.end method

.method public final defaultValue()Ljava/lang/Object;
    .locals 0

    .line 6
    new-instance p0, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bl;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic toState([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/dl;->a([B)Lio/appmetrica/analytics/impl/bl;

    move-result-object p0

    return-object p0
.end method
