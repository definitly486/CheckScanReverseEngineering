.class public final Lio/appmetrica/analytics/remotepermissions/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/remotepermissions/impl/c;

.field public final b:Lio/appmetrica/analytics/remotepermissions/impl/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 25
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/remotepermissions/impl/g;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;Lio/appmetrica/analytics/remotepermissions/impl/b;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/remotepermissions/impl/c;Lio/appmetrica/analytics/remotepermissions/impl/b;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/impl/g;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/remotepermissions/impl/g;->b:Lio/appmetrica/analytics/remotepermissions/impl/b;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/remotepermissions/impl/c;Lio/appmetrica/analytics/remotepermissions/impl/b;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lio/appmetrica/analytics/remotepermissions/impl/c;

    invoke-direct {p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lio/appmetrica/analytics/remotepermissions/impl/b;

    invoke-direct {p2}, Lio/appmetrica/analytics/remotepermissions/impl/b;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/remotepermissions/impl/g;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;Lio/appmetrica/analytics/remotepermissions/impl/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/remotepermissions/impl/g;->a:Lio/appmetrica/analytics/remotepermissions/impl/c;

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/impl/g;->b:Lio/appmetrica/analytics/remotepermissions/impl/b;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/b;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/remotepermissions/impl/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/d;)Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p0

    sget-object p1, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->Companion:Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;->toWrapper$remote_permissions_release(Lio/appmetrica/analytics/remotepermissions/impl/e;)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/g;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    return-object p0
.end method
