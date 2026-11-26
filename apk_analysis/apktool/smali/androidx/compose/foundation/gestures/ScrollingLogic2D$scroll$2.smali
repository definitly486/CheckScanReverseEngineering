.class final Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.ScrollingLogic2D$scroll$2"
    f = "Scrollable2D.kt"
    l = {
        0x1e4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroidx/compose/foundation/gestures/Scroll2DScope;",
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
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lbm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic2D;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->$block:Lbm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->$block:Lbm3;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lbm3;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/Scroll2DScope;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Scroll2DScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/foundation/gestures/Scroll2DScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->invoke(Landroidx/compose/foundation/gestures/Scroll2DScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->label:I

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

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/Scroll2DScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v1, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$setOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->$block:Lbm3;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getNestedScrollScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    move-result-object v1

    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;->label:I

    invoke-interface {p1, v1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
