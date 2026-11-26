.class final Landroidx/activity/compose/ComposePredictiveBackHandler;
.super Landroidx/activity/compose/internal/BackHandlerCompat;
.source "SourceFile"


# instance fields
.field private activeChannel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field private activeJob:Lmb4;

.field private currentOnBack:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isPredictiveBack:Z

.field private final scope:Ly22;


# direct methods
.method public constructor <init>(Ly22;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V

    iput-object p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->scope:Ly22;

    new-instance p1, Landroidx/activity/compose/ComposePredictiveBackHandler$currentOnBack$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/activity/compose/ComposePredictiveBackHandler$currentOnBack$1;-><init>(Le02;)V

    iput-object p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lbm3;

    return-void
.end method

.method public static final synthetic access$getActiveChannel$p(Landroidx/activity/compose/ComposePredictiveBackHandler;)Lx81;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    return-object p0
.end method

.method private final launchNewGesture()V
    .locals 4

    sget-object v0, Lcu0;->SUSPEND:Lcu0;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->scope:Ly22;

    new-instance v1, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;

    invoke-direct {v1, p0, v3}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Le02;)V

    const/4 v2, 0x3

    invoke-static {v0, v3, v3, v1, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeJob:Lmb4;

    return-void
.end method


# virtual methods
.method public final getCurrentOnBack()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lbm3;

    return-object p0
.end method

.method public final getScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->scope:Ly22;

    return-object p0
.end method

.method public isBackEnabled()Z
    .locals 0

    invoke-super {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->isBackEnabled()Z

    move-result p0

    return p0
.end method

.method public onBackCancelled()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "onBack cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lqz6;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    iput-object v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeJob:Lmb4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->isPredictiveBack:Z

    return-void
.end method

.method public onBackCompleted()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->isPredictiveBack:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->onBackCancelled()V

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->isPredictiveBack:Z

    invoke-direct {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->launchNewGesture()V

    :cond_1
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lno7;->close(Ljava/lang/Throwable;)Z

    :cond_2
    iput-boolean v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->isPredictiveBack:Z

    return-void
.end method

.method public onBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lx81;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->onBackCancelled()V

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->isBackEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->isPredictiveBack:Z

    invoke-direct {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->launchNewGesture()V

    :cond_0
    return-void
.end method

.method public setBackEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeJob:Lmb4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmb4;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->onBackCancelled()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->setBackEnabled(Z)V

    return-void
.end method

.method public final setCurrentOnBack(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lbm3;

    return-void
.end method
