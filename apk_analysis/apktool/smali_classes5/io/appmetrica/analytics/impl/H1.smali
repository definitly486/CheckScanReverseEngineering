.class public final Lio/appmetrica/analytics/impl/H1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:I

.field public final synthetic c:Lio/appmetrica/analytics/impl/P1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/P1;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/H1;->c:Lio/appmetrica/analytics/impl/P1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/H1;->a:Landroid/content/Intent;

    iput p3, p0, Lio/appmetrica/analytics/impl/H1;->b:I

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/H1;->c:Lio/appmetrica/analytics/impl/P1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/P1;->b:Lio/appmetrica/analytics/impl/E1;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/H1;->a:Landroid/content/Intent;

    iget p0, p0, Lio/appmetrica/analytics/impl/H1;->b:I

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/impl/E1;->a(Landroid/content/Intent;I)V

    return-void
.end method
