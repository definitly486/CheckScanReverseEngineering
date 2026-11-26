.class public final Lcg3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.coroutines.FlowShortcutsKt$pollingFlow$1"
    f = "FlowShortcuts.kt"
    l = {
        0x21,
        0x21,
        0x27,
        0x2a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
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
.field public l:Lid3;

.field public m:J

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:J

.field public final synthetic q:Ldg3;

.field public final synthetic r:J

.field public final synthetic s:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;


# direct methods
.method public constructor <init>(JLdg3;JLcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;Le02;)V
    .locals 0

    iput-wide p1, p0, Lcg3;->p:J

    iput-object p3, p0, Lcg3;->q:Ldg3;

    iput-wide p4, p0, Lcg3;->r:J

    iput-object p6, p0, Lcg3;->s:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8
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

    new-instance v0, Lcg3;

    iget-wide v4, p0, Lcg3;->r:J

    iget-object v6, p0, Lcg3;->s:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;

    iget-wide v1, p0, Lcg3;->p:J

    iget-object v3, p0, Lcg3;->q:Ldg3;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcg3;-><init>(JLdg3;JLcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;Le02;)V

    iput-object p1, v0, Lcg3;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcg3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcg3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcg3;->n:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-wide v7, p0, Lcg3;->m:J

    iget-object v1, p0, Lcg3;->o:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v7, p0, Lcg3;->m:J

    iget-object v1, p0, Lcg3;->o:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide v7, p0, Lcg3;->m:J

    iget-object v1, p0, Lcg3;->l:Lid3;

    iget-object v9, p0, Lcg3;->o:Ljava/lang/Object;

    check-cast v9, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcg3;->o:Ljava/lang/Object;

    check-cast p1, Lid3;

    invoke-static {}, Ldd5;->b()J

    move-result-wide v7

    iget-wide v9, p0, Lcg3;->p:J

    sget-object v1, Lau2;->NANOSECONDS:Lau2;

    invoke-static {v7, v8, v9, v10, v1}, Lew4;->b(JJLau2;)J

    move-result-wide v7

    move-object v1, p1

    :cond_5
    :goto_0
    invoke-static {v7, v8}, Lqv8$a$a;->a(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Lwt2;->i(J)Z

    move-result p1

    if-eqz p1, :cond_b

    iput-object v1, p0, Lcg3;->o:Ljava/lang/Object;

    iput-object v1, p0, Lcg3;->l:Lid3;

    iput-wide v7, p0, Lcg3;->m:J

    iput v6, p0, Lcg3;->n:I

    iget-object p1, p0, Lcg3;->q:Ldg3;

    invoke-virtual {p1, p0}, Ldg3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v9, v1

    :goto_1
    iput-object v9, p0, Lcg3;->o:Ljava/lang/Object;

    iput-object v2, p0, Lcg3;->l:Lid3;

    iput-wide v7, p0, Lcg3;->m:J

    iput v5, p0, Lcg3;->n:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v9

    :goto_2
    invoke-static {}, Ldd5;->b()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lqv8$a$a;->c(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Lwt2;->i(J)Z

    move-result p1

    if-nez p1, :cond_b

    const-wide/16 v11, 0x0

    cmp-long p1, v9, v11

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Lwt2;

    iget-wide v11, p0, Lcg3;->r:J

    invoke-direct {p1, v11, v12}, Lwt2;-><init>(J)V

    new-instance v11, Lwt2;

    invoke-direct {v11, v9, v10}, Lwt2;-><init>(J)V

    invoke-virtual {p1, v11}, Lwt2;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-gtz v9, :cond_9

    goto :goto_3

    :cond_9
    move-object p1, v11

    :goto_3
    iput-object v1, p0, Lcg3;->o:Ljava/lang/Object;

    iput-wide v7, p0, Lcg3;->m:J

    iput v4, p0, Lcg3;->n:I

    iget-wide v9, p1, Lwt2;->b:J

    invoke-static {v9, v10}, Lyk2;->d(J)J

    move-result-wide v9

    invoke-static {v9, v10, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    sget-object v9, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p1, v9, :cond_a

    goto :goto_4

    :cond_a
    sget-object p1, Lj59;->a:Lj59;

    :goto_4
    if-ne p1, v0, :cond_5

    goto :goto_6

    :cond_b
    :goto_5
    iput-object v2, p0, Lcg3;->o:Ljava/lang/Object;

    iput v3, p0, Lcg3;->n:I

    iget-object p1, p0, Lcg3;->s:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    :goto_6
    return-object v0

    :cond_c
    :goto_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
