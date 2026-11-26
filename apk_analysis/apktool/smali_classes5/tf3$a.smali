.class public final Ltf3$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.util.paginators.FlowPaginator$1"
    f = "FlowPaginator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltf3;-><init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+TT;>;",
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

.field public final synthetic m:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltf3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf3<",
            "TT;>;",
            "Le02<",
            "-",
            "Ltf3$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltf3$a;->m:Ltf3;

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

    new-instance v0, Ltf3$a;

    iget-object p0, p0, Ltf3$a;->m:Ltf3;

    invoke-direct {v0, p0, p2}, Ltf3$a;-><init>(Ltf3;Le02;)V

    iput-object p1, v0, Ltf3$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ltf3$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltf3$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltf3$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltf3$a;->m:Ltf3;

    iget-object v1, v0, Ltf3;->c:Ltf3$d;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Ltf3$a;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Ltf3;->e:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Ltf3$d;->b()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p0}, Ltf3$d;->showData(Ljava/util/List;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
