.class public final Lwd3$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2"
    f = "Delay.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lp91<",
        "+",
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
.field public l:Lr07;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le02;Lid3;Lr07;)V
    .locals 0

    iput-object p3, p0, Lwd3$b;->o:Lr07;

    iput-object p2, p0, Lwd3$b;->p:Lid3;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Lwd3$b;

    iget-object v1, p0, Lwd3$b;->o:Lr07;

    iget-object p0, p0, Lwd3$b;->p:Lid3;

    invoke-direct {v0, p2, p0, v1}, Lwd3$b;-><init>(Le02;Lid3;Lr07;)V

    check-cast p1, Lp91;

    iget-object p0, p1, Lp91;->a:Ljava/lang/Object;

    iput-object p0, v0, Lwd3$b;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lp91;

    iget-object p1, p1, Lp91;->a:Ljava/lang/Object;

    check-cast p2, Le02;

    new-instance v0, Lwd3$b;

    iget-object v1, p0, Lwd3$b;->o:Lr07;

    iget-object p0, p0, Lwd3$b;->p:Lid3;

    invoke-direct {v0, p2, p0, v1}, Lwd3$b;-><init>(Le02;Lid3;Lr07;)V

    iput-object p1, v0, Lwd3$b;->n:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lwd3$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lwd3$b;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lwd3$b;->m:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lwd3$b;->l:Lr07;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lp91$b;

    iget-object v2, p0, Lwd3$b;->o:Lr07;

    if-nez p1, :cond_2

    iput-object v0, v2, Lr07;->b:Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_7

    invoke-static {v0}, Lp91;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, v2, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_5

    sget-object v0, Laq5;->b:Lbh8;

    if-ne p1, v0, :cond_3

    move-object p1, v4

    :cond_3
    iput-object v4, p0, Lwd3$b;->n:Ljava/lang/Object;

    iput-object v2, p0, Lwd3$b;->l:Lr07;

    iput v3, p0, Lwd3$b;->m:I

    iget-object v0, p0, Lwd3$b;->p:Lid3;

    invoke-interface {v0, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, v2

    :goto_0
    move-object v2, p0

    :cond_5
    sget-object p0, Laq5;->d:Lbh8;

    iput-object p0, v2, Lr07;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    throw p1

    :cond_7
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
