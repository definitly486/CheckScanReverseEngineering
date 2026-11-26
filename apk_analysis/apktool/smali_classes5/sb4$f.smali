.class public final Lsb4$f;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    l = {
        0x3eb,
        0x3ed
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsb4;->v()Lzo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Lbm3<",
        "Lbp7<",
        "-",
        "Lmb4;",
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
.field public l:Lou4;

.field public m:Lhi1;

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lsb4;


# direct methods
.method public constructor <init>(Le02;Lsb4;)V
    .locals 0

    iput-object p2, p0, Lsb4$f;->r:Lsb4;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lf57;-><init>(ILe02;)V

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

    new-instance v0, Lsb4$f;

    iget-object p0, p0, Lsb4$f;->r:Lsb4;

    invoke-direct {v0, p2, p0}, Lsb4$f;-><init>(Le02;Lsb4;)V

    iput-object p1, v0, Lsb4$f;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lsb4$f;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lsb4$f;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lsb4$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lsb4$f;->q:Ljava/lang/Object;

    check-cast v0, Lbp7;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lsb4$f;->p:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lsb4$f;->o:I

    iget v4, p0, Lsb4$f;->n:I

    iget-object v5, p0, Lsb4$f;->m:Lhi1;

    iget-object v6, p0, Lsb4$f;->l:Lou4;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lsb4$f;->r:Lsb4;

    invoke-virtual {p1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lhi1;

    if-eqz v2, :cond_3

    check-cast p1, Lhi1;

    iget-object p1, p1, Lhi1;->f:Lsb4;

    iput-object v5, p0, Lsb4$f;->q:Ljava/lang/Object;

    iput v4, p0, Lsb4$f;->p:I

    invoke-virtual {v0, p0, p1}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_3
    instance-of v2, p1, La44;

    if-eqz v2, :cond_5

    check-cast p1, La44;

    invoke-interface {p1}, La44;->b()Lbo5;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lpu4;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lpu4;

    const/4 v4, 0x0

    move-object v6, p1

    move-object v5, v2

    move v2, v4

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v5, Lhi1;

    if-eqz p1, :cond_4

    move-object p1, v5

    check-cast p1, Lhi1;

    iget-object v7, p1, Lhi1;->f:Lsb4;

    iput-object v0, p0, Lsb4$f;->q:Ljava/lang/Object;

    iput-object v6, p0, Lsb4$f;->l:Lou4;

    iput-object p1, p0, Lsb4$f;->m:Lhi1;

    iput v4, p0, Lsb4$f;->n:I

    iput v2, p0, Lsb4$f;->o:I

    iput v3, p0, Lsb4$f;->p:I

    invoke-virtual {v0, p0, v7}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    invoke-virtual {v5}, Lpu4;->g()Lpu4;

    move-result-object v5

    goto :goto_0

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
