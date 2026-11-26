.class public final Lj91$a$a$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2"
    f = "Merge.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj91$a$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
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

.field public final synthetic m:Lj91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj91<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic n:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj91;Lid3;Ljava/lang/Object;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj91<",
            "TT;TR;>;",
            "Lid3<",
            "-TR;>;TT;",
            "Le02<",
            "-",
            "Lj91$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj91$a$a$a;->m:Lj91;

    iput-object p2, p0, Lj91$a$a$a;->n:Lid3;

    iput-object p3, p0, Lj91$a$a$a;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance p1, Lj91$a$a$a;

    iget-object v0, p0, Lj91$a$a$a;->n:Lid3;

    iget-object v1, p0, Lj91$a$a$a;->o:Ljava/lang/Object;

    iget-object p0, p0, Lj91$a$a$a;->m:Lj91;

    invoke-direct {p1, p0, v0, v1, p2}, Lj91$a$a$a;-><init>(Lj91;Lid3;Ljava/lang/Object;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lj91$a$a$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lj91$a$a$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lj91$a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lj91$a$a$a;->l:I

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

    iget-object p1, p0, Lj91$a$a$a;->m:Lj91;

    iget-object p1, p1, Lj91;->f:Ldm3;

    iput v2, p0, Lj91$a$a$a;->l:I

    iget-object v1, p0, Lj91$a$a$a;->n:Lid3;

    iget-object v2, p0, Lj91$a$a$a;->o:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
