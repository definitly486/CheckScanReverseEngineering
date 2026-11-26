.class public final Lio/appmetrica/analytics/impl/wd;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/zd;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zd;Z)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/wd;->a:Lio/appmetrica/analytics/impl/zd;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/wd;->b:Z

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/wd;->a:Lio/appmetrica/analytics/impl/zd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/zd;->a(Lio/appmetrica/analytics/impl/zd;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/wd;->b:Z

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lio/appmetrica/analytics/impl/Wa;->a(ZZ)V

    return-void
.end method
