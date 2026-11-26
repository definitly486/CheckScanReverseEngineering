.class public final Ld82$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.domain.interactor.DailyTaskInteractor$fetchDailyTaskContent$2"
    f = "DailyTaskInteractor.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld82;->a(I)V
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
.field public l:Lxg5;

.field public m:Ld82;

.field public n:Ljava/lang/Object;

.field public o:I

.field public p:I

.field public final synthetic q:Ld82;

.field public final synthetic r:I


# direct methods
.method public constructor <init>(Ld82;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82;",
            "I",
            "Le02<",
            "-",
            "Ld82$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ld82$b;->q:Ld82;

    iput p2, p0, Ld82$b;->r:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Ld82$b;

    iget-object v0, p0, Ld82$b;->q:Ld82;

    iget p0, p0, Ld82$b;->r:I

    invoke-direct {p1, v0, p0, p2}, Ld82$b;-><init>(Ld82;ILe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ld82$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ld82$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ld82$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ld82$b;->p:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Ld82$b;->o:I

    iget-object v3, p0, Ld82$b;->n:Ljava/lang/Object;

    iget-object v4, p0, Ld82$b;->m:Ld82;

    iget-object v5, p0, Ld82$b;->l:Lxg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ld82$b;->q:Ld82;

    iget-object v1, p1, Ld82;->g:Lz68;

    iget v3, p0, Ld82$b;->r:I

    move-object v4, p1

    move-object v5, v1

    move v1, v3

    :cond_2
    invoke-interface {v5}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object p1, v3

    check-cast p1, Li57;

    iget-object p1, v4, Ld82;->a:Lap8;

    iput-object v5, p0, Ld82$b;->l:Lxg5;

    iput-object v4, p0, Ld82$b;->m:Ld82;

    iput-object v3, p0, Ld82$b;->n:Ljava/lang/Object;

    iput v1, p0, Ld82$b;->o:I

    iput v2, p0, Ld82$b;->p:I

    invoke-interface {p1, v1, p0}, Lap8;->a(ILf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    new-instance v6, Li57$c;

    invoke-direct {v6, p1}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v3, v6}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
