.class public final Landroidx/compose/ui/node/OwnerSnapshotObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private final onCommitAffectingLayout:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingLayoutModifier:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingLayoutModifierInLookahead:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingLookahead:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingLookaheadMeasure:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingMeasure:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingSemantics:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->$stable:I

    sput v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->$stable:I

    return-void
.end method

.method public constructor <init>(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lnl3;)V

    iput-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookaheadMeasure:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingMeasure$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingMeasure$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingSemantics$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingSemantics$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingSemantics:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifier:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifierInLookahead:Lnl3;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLookahead$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLookahead$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookahead:Lnl3;

    return-void
.end method

.method public static final synthetic access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingLayout$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingLayoutModifier$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifier:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingLayoutModifierInLookahead$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifierInLookahead:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingLookahead$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookahead:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingLookaheadMeasure$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookaheadMeasure:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingMeasure$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getOnCommitAffectingSemantics$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingSemantics:Lnl3;

    return-object p0
.end method


# virtual methods
.method public final clear$ui(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearInvalidObservations$ui()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v0, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clearIf(Lnl3;)V

    return-void
.end method

.method public final observeLayoutModifierSnapshotReads$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingLayoutModifier$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeLayoutModifierSnapshotReadsAffectingLookahead$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingLayoutModifierInLookahead$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeLayoutSnapshotReads$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingLayout$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeLayoutSnapshotReadsAffectingLookahead$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingLookahead$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeMeasureSnapshotReads$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingMeasure$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeMeasureSnapshotReadsAffectingLookahead$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingLookaheadMeasure$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeReads$ui(Landroidx/compose/ui/node/OwnerScope;Lnl3;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/ui/node/OwnerScope;",
            ">(TT;",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final observeSemanticsReads$ui(Landroidx/compose/ui/node/LayoutNode;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingSemantics$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lnl3;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lnl3;Lll3;)V

    return-void
.end method

.method public final startObserving$ui()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    return-void
.end method

.method public final stopObserving$ui()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->stop()V

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    return-void
.end method
