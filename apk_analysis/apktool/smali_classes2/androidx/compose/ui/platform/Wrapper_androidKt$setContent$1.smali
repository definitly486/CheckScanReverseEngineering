.class final synthetic Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;
.implements Lmm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/Wrapper_androidKt;->setContent(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/ui/platform/ComposeViewContext;Lbm3;)Landroidx/compose/runtime/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Landroidx/compose/runtime/CompositionContext;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;->$tmp0:Landroidx/compose/runtime/CompositionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmm3;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    check-cast p1, Lmm3;

    invoke-interface {p1}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFunctionDelegate()Lcm3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm3<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lqm3;

    iget-object v2, p0, Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;->$tmp0:Landroidx/compose/runtime/CompositionContext;

    const-string v5, "scheduleFrameEndCallback(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Landroidx/compose/runtime/CompositionContext;

    const-string v4, "scheduleFrameEndCallback"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/CancellationHandle;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;->$tmp0:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    return-object p0
.end method
