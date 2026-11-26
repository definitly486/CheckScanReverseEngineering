.class public final Ln26;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.core.ui.paginator.Paginator$1"
    f = "Paginator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "Lpz3;",
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
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lr26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr26<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr26;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr26<",
            "Lpz3;",
            ">;",
            "Le02<",
            "-",
            "Ln26;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ln26;->m:Lr26;

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

    new-instance v0, Ln26;

    iget-object p0, p0, Ln26;->m:Lr26;

    invoke-direct {v0, p0, p2}, Ln26;-><init>(Lr26;Le02;)V

    iput-object p1, v0, Ln26;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ln26;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ln26;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ln26;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ln26;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Ln26;->m:Lr26;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr26;->d:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Lr26;->c:Lr26$a;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lr26$a;->showData(Ljava/util/List;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
