.class final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1"
    f = "TextFieldSelectionManager.kt"
    l = {
        0x43b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbarViaTextToolbar()Lmb4;
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
.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend$lambda$0$0(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend$lambda$0$2(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCoroutineScope$foundation()Ly22;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc32;->UNDISPATCHED:Lc32;

    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$copy$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$copy$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le02;)V

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v2, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$1(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCoroutineScope$foundation()Ly22;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc32;->UNDISPATCHED:Lc32;

    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$cut$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$cut$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le02;)V

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v2, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$2(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCoroutineScope$foundation()Ly22;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc32;->UNDISPATCHED:Lc32;

    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$paste$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1$1$paste$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le02;)V

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v2, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$3(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->selectAll$foundation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$4(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->autofill$foundation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend$lambda$0$1(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend$lambda$0$4(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend$lambda$0$3(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->label:I

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateClipboardEntry$foundation(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbarViaTextToolbar$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lnl3;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->canShowCopyMenuItem$foundation()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/compose/foundation/text/selection/e;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/e;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    move-object v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->canShowCutMenuItem$foundation()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/compose/foundation/text/selection/f;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/f;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    move-object v9, v0

    goto :goto_3

    :cond_5
    move-object v9, v3

    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->canShowPasteMenuItem$foundation()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/compose/foundation/text/selection/g;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/g;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    move-object v8, v0

    goto :goto_4

    :cond_6
    move-object v8, v3

    :goto_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->canShowSelectAllMenuItem$foundation()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/compose/foundation/text/selection/h;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/h;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    move-object v10, v0

    goto :goto_5

    :cond_7
    move-object v10, v3

    :goto_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->canShowAutofillMenuItem$foundation()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Landroidx/compose/foundation/text/selection/i;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text/selection/i;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    :cond_8
    move-object v11, v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getContentRect(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    invoke-interface/range {v5 .. v11}, Landroidx/compose/ui/platform/TextToolbar;->showMenu(Landroidx/compose/ui/geometry/Rect;Lll3;Lll3;Lll3;Lll3;Lll3;)V

    :cond_9
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1, v4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_6
    invoke-virtual {p1, v1, v4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lnl3;)V

    throw p0
.end method
