.class final Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.SearchBarDefaults$InputField$9$1"
    f = "SearchBar.kt"
    l = {
        0x5a2
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarDefaults;->InputField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $searchBarState:Landroidx/compose/material3/SearchBarState;

.field final synthetic $textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/foundation/text/input/TextFieldState;Ly22;Landroidx/compose/runtime/State;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Ly22;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$coroutineScope:Ly22;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$focused$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroidx/compose/foundation/text/input/TextFieldState;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->invokeSuspend$lambda$0(Landroidx/compose/foundation/text/input/TextFieldState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/foundation/text/input/TextFieldState;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldState;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
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

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;

    iget-object v1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iget-object v2, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v3, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$coroutineScope:Ly22;

    iget-object v4, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$focused$delegate:Landroidx/compose/runtime/State;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/foundation/text/input/TextFieldState;Ly22;Landroidx/compose/runtime/State;Le02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    invoke-static {p1}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance v4, Lp07;

    invoke-direct {v4}, Lp07;-><init>()V

    iget-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldState;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, v4, Lp07;->b:I

    iget-object p1, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    new-instance v1, Landroidx/compose/material3/o3;

    invoke-direct {v1, p1}, Landroidx/compose/material3/o3;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lll3;)Lhd3;

    move-result-object p1

    new-instance v3, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;

    iget-object v5, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iget-object v6, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$coroutineScope:Ly22;

    iget-object v7, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->$focused$delegate:Landroidx/compose/runtime/State;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$2;-><init>(Lp07;Landroidx/compose/material3/SearchBarState;Ly22;Landroidx/compose/runtime/State;Le02;)V

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;

    iput v2, p0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->label:I

    new-instance v2, Ldf3$a;

    invoke-direct {v2, v1, v3}, Ldf3$a;-><init>(Lid3;Lbm3;)V

    invoke-interface {p1, v2, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
