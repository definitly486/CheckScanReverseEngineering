.class public final Lio/appmetrica/analytics/impl/Nm;
.super Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Mm;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    return-object p0
.end method

.method public final a([B)Lio/appmetrica/analytics/impl/Mm;
    .locals 0

    .line 13
    new-instance p0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    invoke-static {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Mm;

    return-object p0
.end method

.method public final bridge synthetic defaultValue()Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nm;->a()Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nm;->a()Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toState([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Nm;->a([B)Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method
