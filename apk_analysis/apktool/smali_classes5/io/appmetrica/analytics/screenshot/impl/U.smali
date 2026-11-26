.class public final Lio/appmetrica/analytics/screenshot/impl/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    iget-boolean v0, v0, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    iget-wide v1, v1, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/U;->a:Z

    .line 20
    iput-wide p2, p0, Lio/appmetrica/analytics/screenshot/impl/U;->b:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceSideServiceCaptorConfig(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/U;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delaySeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/screenshot/impl/U;->b:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
