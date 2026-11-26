.class public final Lio/appmetrica/analytics/impl/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerReporter;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lio/appmetrica/analytics/impl/w9;

.field public final d:Lio/appmetrica/analytics/impl/a6;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/w9;Lio/appmetrica/analytics/impl/a6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hd;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/hd;->b:Z

    iput-object p3, p0, Lio/appmetrica/analytics/impl/hd;->c:Lio/appmetrica/analytics/impl/w9;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/hd;->d:Lio/appmetrica/analytics/impl/a6;

    return-void
.end method


# virtual methods
.method public final getApiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hd;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isMain()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/hd;->b:Z

    return p0
.end method

.method public final report(Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hd;->d:Lio/appmetrica/analytics/impl/a6;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/a6;->d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getType()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getCustomType()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->e:I

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setName(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getValueBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    :cond_1
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getValueProtocolVersion()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getBytesTruncated()I

    move-result p1

    iput p1, v0, Lio/appmetrica/analytics/impl/a6;->g:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hd;->c:Lio/appmetrica/analytics/impl/w9;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    return-void
.end method
