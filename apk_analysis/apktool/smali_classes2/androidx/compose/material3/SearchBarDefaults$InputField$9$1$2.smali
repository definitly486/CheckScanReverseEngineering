.class final Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.SearchBarDefaults$InputField$9$1$2"
    f = "SearchBar.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/CharSequence;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $coroutineScope:Ly22;

.field final synthetic $focused$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prevLength:Lp07;

.field final synthetic $searchBarState:Landroidx/compose/material3/SearchBarState;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lp07;Landroidx/compose/material3/SearchBarState;Ly22;Landroidx/compose/runtime/State;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp07;",
            "Landroidx/compose/material3/SearchBarState;",
            "Ly22;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$prevLength:Lp07;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$coroutineScope:Ly22;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$focused$delegate:Landroidx/compose/runtime/State;

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

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;

    iget-object v1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$prevLength:Lp07;

    iget-object v2, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iget-object v3, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$coroutineScope:Ly22;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$focused$delegate:Landroidx/compose/runtime/State;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;-><init>(Lp07;Landroidx/compose/material3/SearchBarState;Ly22;Landroidx/compose/runtime/State;Le02;)V

    iput-object p1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/CharSequence;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->invoke(Ljava/lang/CharSequence;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$prevLength:Lp07;

    iget v0, v0, Lp07;->b:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$focused$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/material3/SearchBarDefaults;->access$InputField$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    invoke-static {v0}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$coroutineScope:Ly22;

    new-instance v2, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2$1;

    iget-object v3, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    invoke-direct {v2, v3, v1}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v2, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    iget-object p0, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;->$prevLength:Lp07;

    iput p1, p0, Lp07;->b:I

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method
