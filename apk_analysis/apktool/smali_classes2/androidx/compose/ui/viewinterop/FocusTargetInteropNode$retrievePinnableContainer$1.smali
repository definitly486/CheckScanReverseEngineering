.class final Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $container:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/compose/ui/layout/PinnableContainer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;


# direct methods
.method public constructor <init>(Lr07;Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/compose/ui/layout/PinnableContainer;",
            ">;",
            "Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;->$container:Lr07;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;->this$0:Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;->$container:Lr07;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;->this$0:Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    invoke-static {}, Landroidx/compose/ui/layout/PinnableContainerKt;->getLocalPinnableContainer()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lr07;->b:Ljava/lang/Object;

    return-void
.end method
