.class public final Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/Long;

.field private final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->a:Ljava/lang/Long;

    iput-object p2, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->b:Ljava/lang/Long;

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->c:Ljava/lang/Long;

    iput-object p4, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->d:Ljava/lang/Long;

    iput-object p5, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->e:Ljava/lang/Long;

    iput-boolean p6, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->f:Z

    iput-object p7, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljh2;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p7}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getConnectionReused()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->f:Z

    return p0
.end method

.method public final getDnsLookup()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getResponse()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public final getTcpConnect()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public final getTimeToFirstByte()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public final getTlsHandshake()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkCallMetrics(dnsLookup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tcpConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsHandshake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeToFirstByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionReused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;->g:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
