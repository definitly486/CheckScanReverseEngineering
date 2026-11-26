.class public final Lbx7$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1"
    f = "SignInConfirmInteractor.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbx7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
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

.field public final synthetic m:Lcx7;

.field public final synthetic n:Lj3;


# direct methods
.method public constructor <init>(Lcx7;Lj3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcx7;",
            "Lj3;",
            "Le02<",
            "-",
            "Lbx7$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbx7$a;->m:Lcx7;

    iput-object p2, p0, Lbx7$a;->n:Lj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbx7$a;

    iget-object v1, p0, Lbx7$a;->m:Lcx7;

    iget-object p0, p0, Lbx7$a;->n:Lj3;

    invoke-direct {v0, v1, p0, p1}, Lbx7$a;-><init>(Lcx7;Lj3;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Lbx7$a;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Lbx7$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lbx7$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lbx7$a;->l:I

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

    iget-object p1, p0, Lbx7$a;->m:Lcx7;

    iget-object p1, p1, Lcx7;->b:Le89;

    iget-object v1, p0, Lbx7$a;->n:Lj3;

    iget-object v1, v1, Lj3;->f:Ljava/lang/String;

    iput v2, p0, Lbx7$a;->l:I

    invoke-virtual {p1, v1, p0}, Le89;->a(Ljava/lang/String;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
