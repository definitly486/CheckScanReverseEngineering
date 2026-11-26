.class public final Lio/appmetrica/analytics/screenshot/impl/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/screenshot/impl/N;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/U;

.field public final d:Lio/appmetrica/analytics/screenshot/impl/O;


# direct methods
.method public constructor <init>(ZLio/appmetrica/analytics/screenshot/impl/N;Lio/appmetrica/analytics/screenshot/impl/U;Lio/appmetrica/analytics/screenshot/impl/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/P;->a:Z

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/P;->b:Lio/appmetrica/analytics/screenshot/impl/N;

    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/P;->c:Lio/appmetrica/analytics/screenshot/impl/U;

    iput-object p4, p0, Lio/appmetrica/analytics/screenshot/impl/P;->d:Lio/appmetrica/analytics/screenshot/impl/O;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceSideScreenshotConfig(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/P;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", apiCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/P;->b:Lio/appmetrica/analytics/screenshot/impl/N;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/P;->c:Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentObserverCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/P;->d:Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
