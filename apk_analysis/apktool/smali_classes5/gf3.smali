.class public final Lgf3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1"
    f = "Zip.kt"
    l = {
        0x1d,
        0x1d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
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


# instance fields
.field public l:Lid3;

.field public m:I

.field public synthetic n:Lid3;

.field public synthetic o:[Ljava/lang/Object;

.field public final synthetic p:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le02<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "-",
            "Le02<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lgf3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf3;->p:Ldm3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lid3;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Le02;

    new-instance v0, Lgf3;

    iget-object p0, p0, Lgf3;->p:Ldm3;

    invoke-direct {v0, p0, p3}, Lgf3;-><init>(Ldm3;Le02;)V

    iput-object p1, v0, Lgf3;->n:Lid3;

    iput-object p2, v0, Lgf3;->o:[Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lgf3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lgf3;->n:Lid3;

    iget-object v1, p0, Lgf3;->o:[Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, p0, Lgf3;->m:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v0, p0, Lgf3;->l:Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object p1, v1, p1

    aget-object v1, v1, v5

    iput-object v6, p0, Lgf3;->n:Lid3;

    iput-object v6, p0, Lgf3;->o:[Ljava/lang/Object;

    iput-object v0, p0, Lgf3;->l:Lid3;

    iput v5, p0, Lgf3;->m:I

    iget-object v3, p0, Lgf3;->p:Ldm3;

    invoke-interface {v3, p1, v1, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v6, p0, Lgf3;->n:Lid3;

    iput-object v6, p0, Lgf3;->o:[Ljava/lang/Object;

    iput-object v6, p0, Lgf3;->l:Lid3;

    iput v4, p0, Lgf3;->m:I

    invoke-interface {v0, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
