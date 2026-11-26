.class public final Lwd3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    l = {
        0xd7,
        0x19f
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

.field public m:Lr07;

.field public n:Lq07;

.field public o:I

.field public synthetic p:Ly22;

.field public synthetic q:Lid3;

.field public final synthetic r:Lvd3;

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
.method public constructor <init>(Lvd3;Lhd3;Le02;)V
    .locals 0

    iput-object p1, p0, Lwd3;->r:Lvd3;

    iput-object p2, p0, Lwd3;->s:Lhd3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ly22;

    check-cast p2, Lid3;

    check-cast p3, Le02;

    new-instance v0, Lwd3;

    iget-object v1, p0, Lwd3;->r:Lvd3;

    iget-object p0, p0, Lwd3;->s:Lhd3;

    invoke-direct {v0, v1, p0, p3}, Lwd3;-><init>(Lvd3;Lhd3;Le02;)V

    iput-object p1, v0, Lwd3;->p:Ly22;

    iput-object p2, v0, Lwd3;->q:Lid3;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lwd3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lwd3;->p:Ly22;

    iget-object v2, v0, Lwd3;->q:Lid3;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v0, Lwd3;->o:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lwd3;->m:Lr07;

    iget-object v4, v0, Lwd3;->l:Lqz6;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, v4

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v1, v0, Lwd3;->n:Lq07;

    iget-object v4, v0, Lwd3;->m:Lr07;

    iget-object v9, v0, Lwd3;->l:Lqz6;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v4, Lwd3$c;

    iget-object v9, v0, Lwd3;->s:Lhd3;

    invoke-direct {v4, v9, v8}, Lwd3$c;-><init>(Lhd3;Le02;)V

    sget-object v9, Lcu0;->SUSPEND:Lcu0;

    sget-object v10, Lc32;->DEFAULT:Lc32;

    const/4 v11, 0x4

    invoke-static {v5, v9, v8, v11}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v9

    sget-object v11, Lgx2;->b:Lgx2;

    invoke-static {v1, v11}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object v1

    new-instance v11, Ltg6;

    invoke-direct {v11, v1, v9}, La91;-><init>(Lo22;Lmu0;)V

    invoke-virtual {v11, v10, v11, v4}, La0;->m0(Lc32;La0;Lbm3;)V

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    move-object v4, v1

    move-object v9, v11

    :goto_1
    iget-object v1, v4, Lr07;->b:Ljava/lang/Object;

    sget-object v10, Laq5;->d:Lbh8;

    if-eq v1, v10, :cond_9

    new-instance v1, Lq07;

    invoke-direct {v1}, Lq07;-><init>()V

    iget-object v10, v4, Lr07;->b:Ljava/lang/Object;

    if-eqz v10, :cond_5

    sget-object v10, Laq5;->b:Lbh8;

    iget-object v11, v0, Lwd3;->r:Lvd3;

    iget-wide v11, v11, Lvd3;->b:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iput-wide v11, v1, Lq07;->b:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_6

    if-nez v11, :cond_5

    iget-object v11, v4, Lr07;->b:Ljava/lang/Object;

    if-ne v11, v10, :cond_3

    move-object v11, v8

    :cond_3
    iput-object v8, v0, Lwd3;->p:Ly22;

    iput-object v2, v0, Lwd3;->q:Lid3;

    iput-object v9, v0, Lwd3;->l:Lqz6;

    iput-object v4, v0, Lwd3;->m:Lr07;

    iput-object v1, v0, Lwd3;->n:Lq07;

    iput v7, v0, Lwd3;->o:I

    invoke-interface {v2, v11, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    iput-object v8, v4, Lr07;->b:Ljava/lang/Object;

    :cond_5
    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, v18

    goto :goto_3

    :cond_6
    const-string v0, "Debounce timeout should not be negative"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v8

    :goto_3
    new-instance v11, Lzl7;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v10

    invoke-direct {v11, v10}, Lzl7;-><init>(Lo22;)V

    iget-object v10, v1, Lr07;->b:Ljava/lang/Object;

    if-eqz v10, :cond_7

    iget-wide v12, v2, Lq07;->b:J

    new-instance v2, Lwd3$a;

    invoke-direct {v2, v8, v4, v1}, Lwd3$a;-><init>(Le02;Lid3;Lr07;)V

    new-instance v10, Lkw5;

    invoke-direct {v10, v12, v13}, Lkw5;-><init>(J)V

    sget-object v13, Ljw5;->c:Ljw5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x3

    invoke-static {v12, v13}, Lv39;->c(ILjava/lang/Object;)V

    move-object v12, v10

    new-instance v10, Lzl7$a;

    sget-object v15, Ldm7;->e:Lbh8;

    const/16 v17, 0x0

    sget-object v14, Ldm7$a;->b:Ldm7$a;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lzl7$a;-><init>(Lzl7;Ljava/lang/Object;Ldm3;Ldm3;Ljava/lang/Object;Lpg8;Ldm3;)V

    invoke-virtual {v11, v10, v5}, Lzl7;->l(Lzl7$a;Z)V

    :cond_7
    invoke-interface {v9}, Lqz6;->h()Lwl7;

    move-result-object v2

    new-instance v10, Lwd3$b;

    invoke-direct {v10, v8, v4, v1}, Lwd3$b;-><init>(Le02;Lid3;Lr07;)V

    invoke-virtual {v11, v2, v10}, Lzl7;->k(Lwl7;Lbm3;)V

    iput-object v8, v0, Lwd3;->p:Ly22;

    iput-object v4, v0, Lwd3;->q:Lid3;

    iput-object v9, v0, Lwd3;->l:Lqz6;

    iput-object v1, v0, Lwd3;->m:Lr07;

    iput-object v8, v0, Lwd3;->n:Lq07;

    iput v6, v0, Lwd3;->o:I

    invoke-static {v11, v0}, Lzl7;->g(Lzl7;Lpg8;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_8

    :goto_4
    return-object v3

    :cond_8
    move-object v2, v4

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
