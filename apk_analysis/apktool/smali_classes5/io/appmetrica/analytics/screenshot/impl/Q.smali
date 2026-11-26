.class public final Lio/appmetrica/analytics/screenshot/impl/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/F;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/screenshot/impl/Q;-><init>(Lio/appmetrica/analytics/screenshot/impl/F;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/F;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/Q;->a:Lio/appmetrica/analytics/screenshot/impl/F;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/F;ILjh2;)V
    .locals 6

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/F;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/screenshot/impl/F;-><init>(Lio/appmetrica/analytics/screenshot/impl/f;Lio/appmetrica/analytics/screenshot/impl/I;Lio/appmetrica/analytics/screenshot/impl/o;ILjh2;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/Q;-><init>(Lio/appmetrica/analytics/screenshot/impl/F;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/screenshot/impl/P;
    .locals 1

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/A;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/A;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/A;

    invoke-direct {p1}, Lio/appmetrica/analytics/screenshot/impl/A;-><init>()V

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/Q;->a:Lio/appmetrica/analytics/screenshot/impl/F;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/A;)Lio/appmetrica/analytics/screenshot/impl/P;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/P;)[B
    .locals 0

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/Q;->a:Lio/appmetrica/analytics/screenshot/impl/F;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/impl/A;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/P;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/Q;->a:Lio/appmetrica/analytics/screenshot/impl/F;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/impl/A;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/Q;->a([B)Lio/appmetrica/analytics/screenshot/impl/P;

    move-result-object p0

    return-object p0
.end method
