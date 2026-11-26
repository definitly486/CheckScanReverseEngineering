.class public final Ld89;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.account.domain.interactors.UpdateUserInfoInteractor$invoke$2"
    f = "UpdateUserInfoInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lmb4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Le89;


# direct methods
.method public constructor <init>(Le89;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le89;",
            "Le02<",
            "-",
            "Ld89;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ld89;->m:Le89;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Ld89;

    iget-object p0, p0, Ld89;->m:Le89;

    invoke-direct {v0, p0, p2}, Ld89;-><init>(Le89;Le02;)V

    iput-object p1, v0, Ld89;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ld89;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ld89;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ld89;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ld89;->l:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v0, Ld89$a;

    iget-object p0, p0, Ld89;->m:Le89;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld89$a;-><init>(Le89;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    new-instance v0, Ld89$b;

    invoke-direct {v0, p0, v1}, Ld89$b;-><init>(Le89;Le02;)V

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method
