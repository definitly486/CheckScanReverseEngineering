.class public final Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.main.view.TasksFragment$showAd$1$2"
    f = "TasksFragment.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->showAd(Ljava/util/List;)V
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
.field public l:I

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

.field public final synthetic n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw48;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;Ljava/util/List;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;",
            "Ljava/util/List<",
            "+",
            "Lw48;",
            ">;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->n:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->n:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;Ljava/util/List;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->l:I

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

    sget-object p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->q:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    iget-object v1, p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->h:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, La8;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;

    invoke-direct {v5, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v6, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;

    invoke-direct {v6, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v7, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;

    invoke-direct {v7, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v8, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$d;

    invoke-direct {v8, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v9, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$e;

    invoke-direct {v9, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v10, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;

    invoke-direct {v10, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v11, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;

    invoke-direct {v11, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    iput v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->l:I

    iget-object v12, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->n:Ljava/util/List;

    move-object v13, p0

    invoke-virtual/range {v3 .. v13}, La8;->a(Landroidx/fragment/app/FragmentActivity;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$d;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$e;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
