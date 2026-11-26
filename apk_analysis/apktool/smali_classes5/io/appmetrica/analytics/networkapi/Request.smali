.class public final Lio/appmetrica/analytics/networkapi/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networkapi/Request$Builder;,
        Lio/appmetrica/analytics/networkapi/Request$Method;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/appmetrica/analytics/networkapi/Request$Method;

.field private final c:[B

.field private final d:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/networkapi/Request$Method;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/networkapi/Request;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/Request;->c:[B

    iput-object p4, p0, Lio/appmetrica/analytics/networkapi/Request;->d:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/networkapi/Request$Method;[BLjava/util/Map;Ljh2;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/networkapi/Request;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/networkapi/Request$Method;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getBody()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request;->c:[B

    return-object p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final getMethod()Lio/appmetrica/analytics/networkapi/Request$Method;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request(url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Request;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', method=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Request;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', bodyLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Request;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request;->d:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
