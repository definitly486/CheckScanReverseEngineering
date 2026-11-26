.class public final Lio/appmetrica/analytics/impl/Zn;
.super Lio/appmetrica/analytics/impl/Eh;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Eh;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;)V

    iput p3, p0, Lio/appmetrica/analytics/impl/Zn;->e:I

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Zn;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
    .locals 1

    iget v0, p0, Lio/appmetrica/analytics/impl/Zn;->e:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Zn;->f:Landroid/os/Bundle;

    invoke-interface {p1, v0, p0}, Lio/appmetrica/analytics/internal/IAppMetricaService;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method
