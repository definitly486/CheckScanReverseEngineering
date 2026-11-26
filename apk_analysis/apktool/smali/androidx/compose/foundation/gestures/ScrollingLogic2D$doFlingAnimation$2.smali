.class final Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.ScrollingLogic2D$doFlingAnimation$2"
    f = "Scrollable2D.kt"
    l = {
        0x1cd
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation-QWom1Mo(JLe02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
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


# instance fields
.field final synthetic $available:J

.field final synthetic $result:Lq07;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;JLq07;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic2D;",
            "J",
            "Lq07;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$available:J

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$result:Lq07;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$available:J

    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$result:Lq07;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;JLq07;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/NestedScrollScope;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->invoke(Landroidx/compose/foundation/gestures/NestedScrollScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->J$0:J

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lq07;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2$flingScope$1;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$available:J

    invoke-direct {v1, v3, p1, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2$flingScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/NestedScrollScope;J)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-wide v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$available:J

    iget-object v5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->$result:Lq07;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getFlingBehavior$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object p1

    invoke-static {v3, v4}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getMagnitude-TH1AsA0(J)F

    move-result v6

    iput-object v5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->L$0:Ljava/lang/Object;

    iput-wide v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->J$0:J

    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;->label:I

    invoke-interface {p1, v1, v6, p0}, Landroidx/compose/foundation/gestures/FlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v3

    move-object p0, v5

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J

    move-result-wide v0

    iput-wide v0, p0, Lq07;->b:J

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
