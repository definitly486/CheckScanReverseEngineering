.class public final Ltf3$e;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.util.paginators.FlowPaginator$loadNewPage$1"
    f = "FlowPaginator.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltf3;->a()V
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
.field public l:I

.field public final synthetic m:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltf3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf3<",
            "TT;>;",
            "Le02<",
            "-",
            "Ltf3$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltf3$e;->m:Ltf3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Ltf3$e;

    iget-object p0, p0, Ltf3$e;->m:Ltf3;

    invoke-direct {p1, p0, p2}, Ltf3$e;-><init>(Ltf3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ltf3$e;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltf3$e;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltf3$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ltf3$e;->l:I

    const/4 v2, 0x0

    iget-object v3, p0, Ltf3$e;->m:Ltf3;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, v3, Ltf3;->f:Z

    iget-object p1, v3, Ltf3;->e:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2, v5}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz68;->setValue(Ljava/lang/Object;)V

    iput v4, p0, Ltf3$e;->l:I

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iput-boolean v4, v3, Ltf3;->f:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
