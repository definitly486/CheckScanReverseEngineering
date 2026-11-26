.class public final Lio/appmetrica/analytics/remotepermissions/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/remotepermissions/impl/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/remotepermissions/impl/f;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/remotepermissions/impl/c;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/remotepermissions/impl/c;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/remotepermissions/impl/c;

    invoke-direct {p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/f;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/impl/d;

    invoke-direct {v0}, Lio/appmetrica/analytics/remotepermissions/impl/d;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/impl/d;

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/d;)Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/e;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;)[B
    .locals 0

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    invoke-virtual {p1}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->getConfig$remote_permissions_release()Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/e;)Lio/appmetrica/analytics/remotepermissions/impl/d;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    invoke-virtual {p1}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->getConfig$remote_permissions_release()Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/e;)Lio/appmetrica/analytics/remotepermissions/impl/d;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/f;->a([B)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    move-result-object p0

    return-object p0
.end method
