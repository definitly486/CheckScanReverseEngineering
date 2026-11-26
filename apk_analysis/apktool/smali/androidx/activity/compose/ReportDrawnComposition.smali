.class final Landroidx/activity/compose/ReportDrawnComposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkReporter:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

.field private final predicate:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;


# direct methods
.method public constructor <init>(Landroidx/activity/FullyDrawnReporter;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Lll3;

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    new-instance v1, Landroidx/activity/compose/l;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lnl3;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    new-instance v0, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;

    invoke-direct {v0, p0}, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/activity/FullyDrawnReporter;->addOnReportDrawnListener(Lll3;)V

    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->addReporter()V

    invoke-direct {p0, p2}, Landroidx/activity/compose/ReportDrawnComposition;->observeReporter(Lll3;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lll3;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver$lambda$0(Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$observeReporter(Landroidx/activity/compose/ReportDrawnComposition;Lll3;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/activity/compose/ReportDrawnComposition;->observeReporter(Lll3;)V

    return-void
.end method

.method public static synthetic b(Ln07;Lll3;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/compose/ReportDrawnComposition;->observeReporter$lambda$0(Ln07;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final observeReporter(Lll3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ln07;

    invoke-direct {v0}, Ln07;-><init>()V

    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    iget-object v2, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Lnl3;

    new-instance v3, Landroidx/activity/compose/m;

    invoke-direct {v3, v0, p1}, Landroidx/activity/compose/m;-><init>(Ln07;Lll3;)V

    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    iget-boolean p1, v0, Ln07;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->removeReporter()V

    :cond_0
    return-void
.end method

.method private static final observeReporter$lambda$0(Ln07;Lll3;)Lj59;
    .locals 0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ln07;->b:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final snapshotStateObserver$lambda$0(Lll3;)Lj59;
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    iget-object p0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->stop()V

    return-void
.end method

.method public final removeReporter()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Lll3;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->invoke()V

    return-void
.end method
