.class public final Lio/appmetrica/analytics/networkapi/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networkapi/Response$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:Ljava/util/Map;

.field private final e:Ljava/lang/Throwable;

.field private final f:Ljava/lang/String;

.field private final g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;


# direct methods
.method private constructor <init>(ZI[BLjava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/networkapi/Response;->a:Z

    iput p2, p0, Lio/appmetrica/analytics/networkapi/Response;->b:I

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/Response;->c:[B

    iput-object p4, p0, Lio/appmetrica/analytics/networkapi/Response;->d:Ljava/util/Map;

    iput-object p5, p0, Lio/appmetrica/analytics/networkapi/Response;->e:Ljava/lang/Throwable;

    iput-object p6, p0, Lio/appmetrica/analytics/networkapi/Response;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/appmetrica/analytics/networkapi/Response;->g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    return-void
.end method

.method public synthetic constructor <init>(ZI[BLjava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;Ljh2;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p7}, Lio/appmetrica/analytics/networkapi/Response;-><init>(ZI[BLjava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/networkapi/Response;->b:I

    return p0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->e:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final getMetrics()Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    return-object p0
.end method

.method public final getResponseData()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->c:[B

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/networkapi/Response;->a:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response(isCompleted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/networkapi/Response;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/networkapi/Response;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseDataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Response;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Response;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Response;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Response;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Response;->g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
