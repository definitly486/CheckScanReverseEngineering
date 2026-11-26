.class final Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$untilNull$1"
    f = "NonTouchScrollingLogic.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt;->untilNull(Lll3;)Lzo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Lbm3<",
        "Lbp7<",
        "-TE;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $builderAction:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lll3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+TE;>;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->$builderAction:Lll3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lf57;-><init>(ILe02;)V

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

    new-instance v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->$builderAction:Lll3;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;-><init>(Lll3;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lbp7;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbp7<",
            "-TE;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->invoke(Lbp7;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$1:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lbp7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lbp7;

    move-object v4, p1

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->$builderAction:Lll3;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v4, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;->label:I

    invoke-virtual {v4, p0, v1}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_0
    if-nez v1, :cond_2

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
