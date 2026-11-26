.class public final Lio/appmetrica/analytics/impl/N1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lio/appmetrica/analytics/impl/P1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/P1;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/N1;->b:Lio/appmetrica/analytics/impl/P1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/N1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/N1;->b:Lio/appmetrica/analytics/impl/P1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/P1;->b:Lio/appmetrica/analytics/impl/E1;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/N1;->a:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/E1;->resumeUserSession(Landroid/os/Bundle;)V

    return-void
.end method
