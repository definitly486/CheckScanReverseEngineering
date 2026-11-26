.class final Landroidx/compose/ui/platform/MotionDurationScaleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/MotionDurationScale;


# instance fields
.field private final _scaleFactor$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final applicationContext:Landroid/content/Context;

.field private coroutineScope:Ly22;

.field private job:Lmb4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->applicationContext:Landroid/content/Context;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->_scaleFactor$delegate:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method public static final synthetic access$set_scaleFactor(Landroidx/compose/ui/platform/MotionDurationScaleImpl;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->set_scaleFactor(F)V

    return-void
.end method

.method private final get_scaleFactor()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->_scaleFactor$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final set_scaleFactor(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->_scaleFactor$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final startObservingSystemScaleFactor()Lmb4;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->access$getAnimationScaleFlowFor(Landroid/content/Context;)Ly68;

    move-result-object v0

    invoke-interface {v0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->set_scaleFactor(F)V

    iget-object v1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->coroutineScope:Ly22;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1;

    invoke-direct {v3, v0, p0, v2}, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1;-><init>(Ly68;Landroidx/compose/ui/platform/MotionDurationScaleImpl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v1, v2, v2, v3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MotionDurationScale scale factor requested before recomposer loop start"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public bridge fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->fold(Landroidx/compose/ui/MotionDurationScale;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->get(Landroidx/compose/ui/MotionDurationScale;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final getCoroutineScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->coroutineScope:Ly22;

    return-object p0
.end method

.method public final getJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->job:Lmb4;

    return-object p0
.end method

.method public getScaleFactor()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->job:Lmb4;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->startObservingSystemScaleFactor()Lmb4;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->job:Lmb4;

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->get_scaleFactor()F

    move-result p0

    return p0
.end method

.method public bridge minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->minusKey(Landroidx/compose/ui/MotionDurationScale;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public bridge plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->plus(Landroidx/compose/ui/MotionDurationScale;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final setCoroutineScope(Ly22;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->coroutineScope:Ly22;

    return-void
.end method

.method public final setJob(Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->job:Lmb4;

    return-void
.end method
