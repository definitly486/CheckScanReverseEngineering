.class final Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.draganddrop.LegacyDragSourceNodeWithDefaultPainter$2"
    f = "LegacyDragAndDropSourceWithDefaultPainter.android.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;-><init>(Lbm3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->this$0:Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->this$0:Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;-><init>(Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->invoke(Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->label:I

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

    iget-object p1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->this$0:Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;

    invoke-virtual {v1}, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter;->getDragAndDropSourceHandler()Lbm3;

    move-result-object v1

    iput v2, p0, Landroidx/compose/foundation/draganddrop/LegacyDragSourceNodeWithDefaultPainter$2;->label:I

    invoke-interface {v1, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
