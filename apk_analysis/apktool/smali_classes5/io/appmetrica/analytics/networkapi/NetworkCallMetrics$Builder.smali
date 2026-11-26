.class public final Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->a:Ljava/lang/Long;

    iget-object v2, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->b:Ljava/lang/Long;

    iget-object v3, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->c:Ljava/lang/Long;

    iget-object v4, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->d:Ljava/lang/Long;

    iget-object v5, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->e:Ljava/lang/Long;

    iget-boolean v6, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->f:Z

    iget-object v7, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->g:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljh2;)V

    return-object v0
.end method

.method public final withConnectionReused(Z)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->f:Z

    return-object p0
.end method

.method public final withDnsLookup(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final withProtocol(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final withResponse(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public final withTcpConnect(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public final withTimeToFirstByte(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public final withTlsHandshake(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->c:Ljava/lang/Long;

    return-object p0
.end method
