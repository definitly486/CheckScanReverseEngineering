.class final Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.SearchBarKt$SearchBar$4$1$1"
    f = "SearchBar.kt"
    l = {
        0x23d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
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

.field final synthetic $progress:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableFloatState;Lhd3;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
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
            "Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$progress:Lhd3;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$onExpandedChange:Lnl3;

    iput-object p5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$coroutineScope:Ly22;

    iput-object p6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;

    iget-object v1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iget-object v2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$progress:Lhd3;

    iget-object v3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$onExpandedChange:Lnl3;

    iget-object v5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$coroutineScope:Ly22;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Lhd3;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$progress:Lhd3;

    new-instance v1, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1$1;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    invoke-direct {v1, v4, v5, v6}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V

    iput v3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iget-object v0, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$onExpandedChange:Lnl3;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$coroutineScope:Ly22;

    new-instance v3, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1$2;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1$1$2;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
