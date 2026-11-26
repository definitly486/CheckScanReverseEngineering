.class final Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2"
    f = "SearchBar.kt"
    l = {
        0x388
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Ly22;",
        "Ljava/lang/Float;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field synthetic F$0:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->this$0:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ly22;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->invoke(Ly22;FLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;FLe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "F",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->this$0:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    invoke-direct {p1, p0, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Le02;)V

    iput p2, p1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->F$0:F

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->label:I

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

    iget p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->F$0:F

    iget-object v1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->this$0:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    iput v2, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;->label:I

    invoke-static {v1, p1, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->access$settleSearchBar-OhffZ5M(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;FLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
