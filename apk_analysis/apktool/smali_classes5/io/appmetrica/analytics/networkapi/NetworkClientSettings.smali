.class public final Lio/appmetrica/analytics/networkapi/NetworkClientSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Long;

.field private final d:Ljavax/net/ssl/SSLSocketFactory;

.field private final e:Ljava/lang/Boolean;

.field private final f:Ljava/lang/Boolean;

.field private final g:I

.field private final h:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->c:Ljava/lang/Long;

    iput-object p4, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->d:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p5, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->e:Ljava/lang/Boolean;

    iput-object p6, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->f:Ljava/lang/Boolean;

    iput p7, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->g:I

    iput-object p8, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;Ljh2;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p8}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getCallTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final getCollectMetrics()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getConnectTimeout()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getInstanceFollowRedirects()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getMaxResponseSize()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->g:I

    return p0
.end method

.method public final getReadTimeout()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->d:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final getUseCaches()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkClientSettings(connectTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sslSocketFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->d:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCaches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceFollowRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxResponseSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collectMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
