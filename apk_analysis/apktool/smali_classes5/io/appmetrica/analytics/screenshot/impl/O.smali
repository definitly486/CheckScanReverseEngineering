.class public final Lio/appmetrica/analytics/screenshot/impl/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:J


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    iget-boolean v0, v0, Lio/appmetrica/analytics/screenshot/impl/x;->a:Z

    invoke-static {}, Lio/appmetrica/analytics/screenshot/impl/m;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {v2}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    iget-wide v2, v2, Lio/appmetrica/analytics/screenshot/impl/x;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>(ZLjava/util/List;J)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/O;->a:Z

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/O;->b:Ljava/util/List;

    .line 25
    iput-wide p3, p0, Lio/appmetrica/analytics/screenshot/impl/O;->c:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceSideContentObserverCaptorConfig(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/O;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaStoreColumnNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/O;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detectWindowSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/screenshot/impl/O;->c:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
