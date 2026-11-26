.class public final Lxd3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1"
    f = "Delay.kt"
    l = {
        0x19d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Ly22;",
        "Lid3<",
        "Ljava/lang/Object;",
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
.field public l:Lqz6;

.field public m:J

.field public n:I

.field public o:I

.field public synthetic p:Ly22;

.field public synthetic q:Lid3;

.field public final synthetic r:J

.field public final synthetic s:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLhd3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lxd3;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lxd3;->r:J

    iput-object p3, p0, Lxd3;->s:Lhd3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ly22;

    check-cast p2, Lid3;

    check-cast p3, Le02;

    new-instance v0, Lxd3;

    iget-wide v1, p0, Lxd3;->r:J

    iget-object p0, p0, Lxd3;->s:Lhd3;

    invoke-direct {v0, v1, v2, p0, p3}, Lxd3;-><init>(JLhd3;Le02;)V

    iput-object p1, v0, Lxd3;->p:Ly22;

    iput-object p2, v0, Lxd3;->q:Lid3;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lxd3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lxd3;->p:Ly22;

    iget-object v2, v0, Lxd3;->q:Lid3;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v0, Lxd3;->o:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    iget v1, v0, Lxd3;->n:I

    iget-wide v8, v0, Lxd3;->m:J

    iget-object v4, v0, Lxd3;->l:Lqz6;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto/16 :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    iget-wide v10, v0, Lxd3;->r:J

    invoke-static {v10, v11, v8, v9}, Lwt2;->d(JJ)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v0, Lxd3;->s:Lhd3;

    invoke-static {v4, v6}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object v13

    instance-of v4, v13, Ld91;

    if-eqz v4, :cond_2

    move-object v4, v13

    check-cast v4, Ld91;

    goto :goto_0

    :cond_2
    move-object v4, v7

    :goto_0
    if-nez v4, :cond_3

    new-instance v12, Li91;

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Li91;-><init>(Lhd3;Lo22;ILcu0;I)V

    move-object v4, v12

    :cond_3
    invoke-virtual {v4, v1}, Ld91;->k(Ly22;)Lqz6;

    move-result-object v1

    move-object v4, v1

    move v1, v6

    move-wide v8, v10

    :cond_4
    new-instance v11, Lzl7;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v10

    invoke-direct {v11, v10}, Lzl7;-><init>(Lo22;)V

    invoke-interface {v4}, Lqz6;->h()Lwl7;

    move-result-object v10

    new-instance v12, Lxd3$a;

    invoke-direct {v12, v2, v7}, Lxd3$a;-><init>(Lid3;Le02;)V

    invoke-virtual {v11, v10, v12}, Lzl7;->k(Lwl7;Lbm3;)V

    new-instance v10, Lxd3$b;

    invoke-direct {v10, v8, v9, v7}, Lxd3$b;-><init>(JLe02;)V

    invoke-static {v8, v9}, Lyk2;->d(J)J

    move-result-wide v12

    new-instance v14, Lkw5;

    invoke-direct {v14, v12, v13}, Lkw5;-><init>(J)V

    sget-object v13, Ljw5;->c:Ljw5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x3

    invoke-static {v12, v13}, Lv39;->c(ILjava/lang/Object;)V

    move-object/from16 v16, v10

    new-instance v10, Lzl7$a;

    sget-object v15, Ldm7;->e:Lbh8;

    const/16 v17, 0x0

    move-object v12, v14

    sget-object v14, Ldm7$a;->b:Ldm7$a;

    invoke-direct/range {v10 .. v17}, Lzl7$a;-><init>(Lzl7;Ljava/lang/Object;Ldm3;Ldm3;Ljava/lang/Object;Lpg8;Ldm3;)V

    invoke-virtual {v11, v10, v6}, Lzl7;->l(Lzl7$a;Z)V

    iput-object v7, v0, Lxd3;->p:Ly22;

    iput-object v2, v0, Lxd3;->q:Lid3;

    iput-object v4, v0, Lxd3;->l:Lqz6;

    iput-wide v8, v0, Lxd3;->m:J

    iput v1, v0, Lxd3;->n:I

    iput v5, v0, Lxd3;->o:I

    invoke-static {v11, v0}, Lzl7;->g(Lzl7;Lpg8;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_5

    return-object v3

    :cond_5
    :goto_1
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_6
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string v1, "Timed out immediately"

    invoke-direct {v0, v1, v7}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lxv8;)V

    throw v0
.end method
