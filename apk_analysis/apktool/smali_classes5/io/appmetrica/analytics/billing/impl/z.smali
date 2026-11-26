.class public final Lio/appmetrica/analytics/billing/impl/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/billing/impl/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/billing/impl/z;-><init>(Lio/appmetrica/analytics/billing/impl/p;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/billing/impl/p;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/z;->a:Lio/appmetrica/analytics/billing/impl/p;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/billing/impl/p;ILjh2;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/billing/impl/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lio/appmetrica/analytics/billing/impl/p;-><init>(Lio/appmetrica/analytics/billing/impl/g;ILjh2;)V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/billing/impl/z;-><init>(Lio/appmetrica/analytics/billing/impl/p;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/billing/impl/B;
    .locals 1

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/billing/impl/r;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/r;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/billing/impl/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lio/appmetrica/analytics/billing/impl/r;

    invoke-direct {p1}, Lio/appmetrica/analytics/billing/impl/r;-><init>()V

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/z;->a:Lio/appmetrica/analytics/billing/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/r;)Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/billing/impl/B;)[B
    .locals 0

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/z;->a:Lio/appmetrica/analytics/billing/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/impl/r;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/B;

    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/z;->a:Lio/appmetrica/analytics/billing/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/impl/r;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/z;->a([B)Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p0

    return-object p0
.end method
