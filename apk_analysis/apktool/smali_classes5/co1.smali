.class public final Lco1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x33,
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    v = 0x1
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
.field public l:[Ljava/lang/Object;

.field public m:Lx81;

.field public n:[B

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:[Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic v:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic w:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lhd3;Lll3;Ldm3;Lid3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;",
            "Lll3<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ldm3<",
            "-",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;-[",
            "Ljava/lang/Object;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lco1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lco1;->t:[Lhd3;

    iput-object p2, p0, Lco1;->u:Lll3;

    iput-object p3, p0, Lco1;->v:Ldm3;

    iput-object p4, p0, Lco1;->w:Lid3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
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

    new-instance v0, Lco1;

    iget-object v3, p0, Lco1;->v:Ldm3;

    iget-object v4, p0, Lco1;->w:Lid3;

    iget-object v1, p0, Lco1;->t:[Lhd3;

    iget-object v2, p0, Lco1;->u:Lll3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lco1;-><init>([Lhd3;Lll3;Ldm3;Lid3;Le02;)V

    iput-object p1, v0, Lco1;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lco1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lco1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lco1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Laq5;->c:Lbh8;

    iget-object v2, v0, Lco1;->s:Ljava/lang/Object;

    check-cast v2, Ly22;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v0, Lco1;->r:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget v2, v0, Lco1;->q:I

    iget v4, v0, Lco1;->p:I

    iget v9, v0, Lco1;->o:I

    iget-object v10, v0, Lco1;->n:[B

    iget-object v11, v0, Lco1;->m:Lx81;

    iget-object v12, v0, Lco1;->l:[Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v11

    move v11, v2

    move-object v2, v10

    move-object v10, v12

    move-object/from16 v12, v20

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget v2, v0, Lco1;->q:I

    iget v4, v0, Lco1;->p:I

    iget v9, v0, Lco1;->o:I

    iget-object v10, v0, Lco1;->n:[B

    iget-object v11, v0, Lco1;->m:Lx81;

    iget-object v12, v0, Lco1;->l:[Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v11

    move v11, v2

    move-object v2, v10

    move-object v10, v12

    move-object/from16 v12, v20

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto :goto_2

    :cond_2
    iget v2, v0, Lco1;->q:I

    iget v4, v0, Lco1;->p:I

    iget v9, v0, Lco1;->o:I

    iget-object v10, v0, Lco1;->n:[B

    iget-object v11, v0, Lco1;->m:Lx81;

    iget-object v12, v0, Lco1;->l:[Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Lp91;

    iget-object v13, v13, Lp91;->a:Ljava/lang/Object;

    move-object/from16 v20, v11

    move v11, v2

    move-object v2, v10

    :goto_0
    move-object/from16 v10, v20

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v4, v0, Lco1;->t:[Lhd3;

    array-length v4, v4

    if-nez v4, :cond_4

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_4
    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1, v9, v10, v4}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    const/4 v11, 0x6

    invoke-static {v4, v8, v8, v11}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v16

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v15, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v14, v10

    :goto_1
    if-ge v14, v4, :cond_5

    new-instance v12, Lco1$a;

    iget-object v13, v0, Lco1;->t:[Lhd3;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lco1$a;-><init>([Lhd3;ILjava/util/concurrent/atomic/AtomicInteger;Lmu0;Le02;)V

    invoke-static {v2, v8, v8, v12, v5}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    new-array v2, v4, [B

    move v11, v10

    move-object/from16 v12, v16

    move-object v10, v9

    move v9, v4

    :goto_2
    add-int/2addr v11, v7

    int-to-byte v11, v11

    iput-object v8, v0, Lco1;->s:Ljava/lang/Object;

    iput-object v10, v0, Lco1;->l:[Ljava/lang/Object;

    iput-object v12, v0, Lco1;->m:Lx81;

    iput-object v2, v0, Lco1;->n:[B

    iput v4, v0, Lco1;->o:I

    iput v9, v0, Lco1;->p:I

    iput v11, v0, Lco1;->q:I

    iput v7, v0, Lco1;->r:I

    invoke-interface {v12, v0}, Lqz6;->c(Lco1;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_6

    goto/16 :goto_4

    :cond_6
    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    move-object/from16 v20, v12

    move-object v12, v10

    goto :goto_0

    :goto_3
    invoke-static {v13}, Lp91;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lj44;

    if-nez v13, :cond_7

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_7
    iget v14, v13, Lj44;->a:I

    aget-object v15, v12, v14

    iget-object v13, v13, Lj44;->b:Ljava/lang/Object;

    aput-object v13, v12, v14

    if-ne v15, v1, :cond_8

    add-int/lit8 v4, v4, -0x1

    :cond_8
    aget-byte v13, v2, v14

    if-eq v13, v11, :cond_9

    int-to-byte v13, v11

    aput-byte v13, v2, v14

    invoke-interface {v10}, Lqz6;->i()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lp91;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lj44;

    if-nez v13, :cond_7

    :cond_9
    if-nez v4, :cond_c

    iget-object v13, v0, Lco1;->u:Lll3;

    invoke-interface {v13}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    iget-object v14, v0, Lco1;->w:Lid3;

    iget-object v15, v0, Lco1;->v:Ldm3;

    if-nez v13, :cond_a

    iput-object v8, v0, Lco1;->s:Ljava/lang/Object;

    iput-object v12, v0, Lco1;->l:[Ljava/lang/Object;

    iput-object v10, v0, Lco1;->m:Lx81;

    iput-object v2, v0, Lco1;->n:[B

    iput v9, v0, Lco1;->o:I

    iput v4, v0, Lco1;->p:I

    iput v11, v0, Lco1;->q:I

    iput v6, v0, Lco1;->r:I

    invoke-interface {v15, v14, v12, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_c

    goto :goto_4

    :cond_a
    const/16 v16, 0x0

    const/16 v17, 0xe

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-static/range {v12 .. v17}, Laq5;->q([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object v8, v0, Lco1;->s:Ljava/lang/Object;

    iput-object v12, v0, Lco1;->l:[Ljava/lang/Object;

    iput-object v10, v0, Lco1;->m:Lx81;

    iput-object v2, v0, Lco1;->n:[B

    iput v9, v0, Lco1;->o:I

    iput v4, v0, Lco1;->p:I

    iput v11, v0, Lco1;->q:I

    iput v5, v0, Lco1;->r:I

    invoke-interface {v7, v6, v13, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_b

    :goto_4
    return-object v3

    :cond_b
    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    move-object/from16 v20, v12

    move-object v12, v10

    move-object/from16 v10, v20

    :goto_5
    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_c
    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    move-object/from16 v20, v12

    move-object v12, v10

    move-object/from16 v10, v20

    goto/16 :goto_2
.end method
