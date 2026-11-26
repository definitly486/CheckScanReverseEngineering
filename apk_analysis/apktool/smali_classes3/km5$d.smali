.class public final Lkm5$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1"
    f = "NetworkFetcher.kt"
    l = {
        0x6b,
        0x79
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm5;->b(Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lvm5;",
        "Le02<",
        "-",
        "Lx48;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lr07;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lqn2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lkm5;

.field public final synthetic q:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lvm5;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic r:Ltm5;


# direct methods
.method public constructor <init>(Lr07;Lkm5;Lr07;Ltm5;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Lqn2$c;",
            ">;",
            "Lkm5;",
            "Lr07<",
            "Lvm5;",
            ">;",
            "Ltm5;",
            "Le02<",
            "-",
            "Lkm5$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkm5$d;->o:Lr07;

    iput-object p2, p0, Lkm5$d;->p:Lkm5;

    iput-object p3, p0, Lkm5$d;->q:Lr07;

    iput-object p4, p0, Lkm5$d;->r:Ltm5;

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

    new-instance v0, Lkm5$d;

    iget-object v3, p0, Lkm5$d;->q:Lr07;

    iget-object v4, p0, Lkm5$d;->r:Ltm5;

    iget-object v1, p0, Lkm5$d;->o:Lr07;

    iget-object v2, p0, Lkm5$d;->p:Lkm5;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkm5$d;-><init>(Lr07;Lkm5;Lr07;Ltm5;Le02;)V

    iput-object p1, v0, Lkm5$d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lvm5;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lkm5$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lkm5$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lkm5$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lkm5$d;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lkm5$d;->q:Lr07;

    iget-object v6, p0, Lkm5$d;->o:Lr07;

    iget-object v7, p0, Lkm5$d;->p:Lkm5;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lkm5$d;->n:Ljava/lang/Object;

    check-cast p0, Lvm5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lkm5$d;->l:Lr07;

    iget-object v3, p0, Lkm5$d;->n:Ljava/lang/Object;

    check-cast v3, Lvm5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v13, p0

    move-object p0, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkm5$d;->n:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Lvm5;

    iget-object p1, v6, Lr07;->b:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Lqn2$c;

    iget-object p1, v5, Lr07;->b:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lvm5;

    iput-object v12, p0, Lkm5$d;->n:Ljava/lang/Object;

    iput-object v6, p0, Lkm5$d;->l:Lr07;

    iput v3, p0, Lkm5$d;->m:I

    iget-object v8, p0, Lkm5$d;->p:Lkm5;

    iget-object v11, p0, Lkm5$d;->r:Ltm5;

    move-object v13, p0

    invoke-virtual/range {v8 .. v13}, Lkm5;->j(Lqn2$c;Lvm5;Ltm5;Lvm5;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v6

    move-object p0, v12

    :goto_0
    iput-object p1, v1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkm5;->f(Lvm5;)V

    iget-object p1, v6, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast p1, Lqn2$c;

    invoke-virtual {v7, p1}, Lkm5;->i(Lqn2$c;)Lvm5;

    move-result-object p0

    iput-object p0, v5, Lr07;->b:Ljava/lang/Object;

    new-instance p0, Lx48;

    iget-object p1, v6, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lqn2$c;

    invoke-virtual {v7, p1}, Lkm5;->g(Lqn2$c;)Ln93;

    move-result-object p1

    iget-object v0, v7, Lkm5;->a:Ljava/lang/String;

    iget-object v1, v5, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Lvm5;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lvm5;->d:Lpm5;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lpm5;->a()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v0, v4}, Lkm5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz82;->NETWORK:Lz82;

    invoke-direct {p0, p1, v0, v1}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object p0

    :cond_5
    iget-object p1, p0, Lvm5;->e:Lb58;

    if-eqz p1, :cond_8

    iput-object p0, v13, Lkm5$d;->n:Ljava/lang/Object;

    iput-object v4, v13, Lkm5$d;->l:Lr07;

    iput v2, v13, Lkm5$d;->m:I

    invoke-static {p1, v13}, Lqb9;->a(Lb58;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Lbu0;

    iget-wide v0, p1, Lbu0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    new-instance v0, Lx48;

    invoke-virtual {v7}, Lkm5;->c()Lw93;

    move-result-object v1

    new-instance v2, La58;

    invoke-direct {v2, p1, v1, v4}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    iget-object p1, v7, Lkm5;->a:Ljava/lang/String;

    iget-object p0, p0, Lvm5;->d:Lpm5;

    invoke-virtual {p0}, Lpm5;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkm5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz82;->NETWORK:Lz82;

    invoke-direct {v0, v2, p0, p1}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v0

    :cond_7
    return-object v4

    :cond_8
    const-string p0, "body == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4
.end method
