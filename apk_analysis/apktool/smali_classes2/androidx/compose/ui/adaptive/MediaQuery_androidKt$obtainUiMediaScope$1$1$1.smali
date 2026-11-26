.class final Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$1$1$1"
    f = "MediaQuery.android.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/adaptive/UiMediaScopeImpl;",
            "Le02<",
            "-",
            "Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

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

    new-instance v0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;

    iget-object p0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;-><init>(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Le02;)V

    iput-object p1, v0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/window/layout/WindowLayoutInfo;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/WindowLayoutInfo;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->invoke(Landroidx/window/layout/WindowLayoutInfo;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    iget-object p0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$1$1$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    invoke-static {p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt;->access$resolvePosture(Landroidx/window/layout/WindowLayoutInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/adaptive/UiMediaScopeImpl;->set_windowPosture-InyEWag(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
