.class final Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.DefaultDraggable2DState$drag$2"
    f = "Draggable2D.kt"
    l = {
        0x140
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DefaultDraggable2DState;->drag(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/foundation/gestures/Drag2DScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dragPriority:Landroidx/compose/foundation/MutatePriority;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DefaultDraggable2DState;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DefaultDraggable2DState;",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/gestures/Drag2DScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$block:Lbm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$block:Lbm3;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;-><init>(Landroidx/compose/foundation/gestures/DefaultDraggable2DState;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState;->access$getDrag2DMutex$p(Landroidx/compose/foundation/gestures/DefaultDraggable2DState;)Landroidx/compose/foundation/MutatorMutex;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState;->access$getDrag2DScope$p(Landroidx/compose/foundation/gestures/DefaultDraggable2DState;)Landroidx/compose/foundation/gestures/Drag2DScope;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->$block:Lbm3;

    iput v2, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag$2;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Landroidx/compose/foundation/MutatorMutex;->mutateWith(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
