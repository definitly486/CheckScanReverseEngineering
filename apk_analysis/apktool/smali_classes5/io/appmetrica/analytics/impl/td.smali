.class public final Lio/appmetrica/analytics/impl/td;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/zd;

.field public final synthetic b:Lio/appmetrica/analytics/AdRevenue;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zd;Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/td;->a:Lio/appmetrica/analytics/impl/zd;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/td;->b:Lio/appmetrica/analytics/AdRevenue;

    iput-boolean p3, p0, Lio/appmetrica/analytics/impl/td;->c:Z

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/td;->a:Lio/appmetrica/analytics/impl/zd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/zd;->a(Lio/appmetrica/analytics/impl/zd;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/td;->b:Lio/appmetrica/analytics/AdRevenue;

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/td;->c:Z

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/IModuleReporter;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V

    return-void
.end method
