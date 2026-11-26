.class public final Lio/appmetrica/analytics/impl/p7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/p7;-><init>(Lio/appmetrica/analytics/impl/o7;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o7;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/impl/p7;->a:Lio/appmetrica/analytics/impl/o7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/o7;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/o7;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p3}, Lio/appmetrica/analytics/impl/o7;-><init>(Lio/appmetrica/analytics/impl/ve;Lio/appmetrica/analytics/impl/w7;ILjh2;)V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/p7;-><init>(Lio/appmetrica/analytics/impl/o7;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/q7;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/z7;

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/z7;-><init>()V
    :try_end_0
    .catch Lio/appmetrica/analytics/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p7;->a:Lio/appmetrica/analytics/impl/o7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/z7;)Lio/appmetrica/analytics/impl/q7;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/q7;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p7;->a:Lio/appmetrica/analytics/impl/o7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/q7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p7;->a:Lio/appmetrica/analytics/impl/o7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/p7;->a([B)Lio/appmetrica/analytics/impl/q7;

    move-result-object p0

    return-object p0
.end method
