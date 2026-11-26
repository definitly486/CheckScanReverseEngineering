.class public final Lj91$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3"
    f = "Merge.kt"
    l = {
        0x17
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj91;->l(Lid3;Le02;)Ljava/lang/Object;
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

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lj91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj91<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic o:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj91;Lid3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj91<",
            "TT;TR;>;",
            "Lid3<",
            "-TR;>;",
            "Le02<",
            "-",
            "Lj91$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj91$a;->n:Lj91;

    iput-object p2, p0, Lj91$a;->o:Lid3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Lj91$a;

    iget-object v1, p0, Lj91$a;->n:Lj91;

    iget-object p0, p0, Lj91$a;->o:Lid3;

    invoke-direct {v0, v1, p0, p2}, Lj91$a;-><init>(Lj91;Lid3;Le02;)V

    iput-object p1, v0, Lj91$a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lj91$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lj91$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lj91$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj91$a;->m:Ljava/lang/Object;

    check-cast v0, Ly22;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lj91$a;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    iget-object v2, p0, Lj91$a;->n:Lj91;

    iget-object v5, v2, Lh91;->e:Lhd3;

    new-instance v6, Lj91$a$a;

    iget-object v7, p0, Lj91$a;->o:Lid3;

    invoke-direct {v6, p1, v0, v2, v7}, Lj91$a$a;-><init>(Lr07;Ly22;Lj91;Lid3;)V

    iput-object v3, p0, Lj91$a;->m:Ljava/lang/Object;

    iput v4, p0, Lj91$a;->l:I

    invoke-interface {v5, v6, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
