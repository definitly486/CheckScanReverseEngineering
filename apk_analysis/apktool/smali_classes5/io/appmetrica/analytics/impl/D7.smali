.class public final Lio/appmetrica/analytics/impl/D7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/D7;-><init>(Lio/appmetrica/analytics/impl/C7;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/C7;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D7;->a:Lio/appmetrica/analytics/impl/C7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/C7;ILjh2;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/C7;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lio/appmetrica/analytics/impl/C7;-><init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/D7;-><init>(Lio/appmetrica/analytics/impl/C7;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/E7;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/B7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/B7;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/B7;

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/B7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/B7;-><init>()V
    :try_end_0
    .catch Lio/appmetrica/analytics/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lio/appmetrica/analytics/impl/B7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/B7;-><init>()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/D7;->a:Lio/appmetrica/analytics/impl/C7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a(Lio/appmetrica/analytics/impl/B7;)Lio/appmetrica/analytics/impl/E7;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/E7;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lio/appmetrica/analytics/impl/D7;->a:Lio/appmetrica/analytics/impl/C7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a(Lio/appmetrica/analytics/impl/E7;)Lio/appmetrica/analytics/impl/B7;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/E7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D7;->a:Lio/appmetrica/analytics/impl/C7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a(Lio/appmetrica/analytics/impl/E7;)Lio/appmetrica/analytics/impl/B7;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D7;->a([B)Lio/appmetrica/analytics/impl/E7;

    move-result-object p0

    return-object p0
.end method
