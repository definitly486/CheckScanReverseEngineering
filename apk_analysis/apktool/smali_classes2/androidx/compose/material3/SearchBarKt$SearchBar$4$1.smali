.class final Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.SearchBarKt$SearchBar$4$1"
    f = "SearchBar.kt"
    l = {
        0x23a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBar-Y92LkZI(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lhd3<",
        "+",
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


# instance fields
.field final synthetic $animationProgress:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coroutineScope:Ly22;

.field final synthetic $currentBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $firstBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mutatorMutex:Landroidx/compose/foundation/MutatorMutex;

.field final synthetic $onExpandedChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatorMutex;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Ly22;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$mutatorMutex:Landroidx/compose/foundation/MutatorMutex;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$onExpandedChange:Lnl3;

    iput-object p5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$coroutineScope:Ly22;

    iput-object p6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9
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

    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;

    iget-object v1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$mutatorMutex:Landroidx/compose/foundation/MutatorMutex;

    iget-object v2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iget-object v3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$onExpandedChange:Lnl3;

    iget-object v5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$coroutineScope:Ly22;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;-><init>(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    iput-object p1, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lhd3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lhd3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->invoke(Lhd3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->label:I

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

    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lhd3;

    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$mutatorMutex:Landroidx/compose/foundation/MutatorMutex;

    new-instance v3, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$onExpandedChange:Lnl3;

    iget-object v8, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$coroutineScope:Ly22;

    iget-object v9, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v10, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Lhd3;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    iput v2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->label:I

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v9, p0

    move-object v6, p1

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/MutatorMutex;->mutate$default(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/foundation/MutatePriority;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
