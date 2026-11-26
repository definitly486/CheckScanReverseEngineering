.class final Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->onAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1;->this$0:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1;->this$0:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->getDetectDragStart()Lbm3;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1;->this$0:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-direct {v1, p1, p0}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode$onAttach$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;)V

    invoke-interface {v0, v1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
