.class public final Lyads/od;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/pd;


# direct methods
.method public constructor <init>(Lyads/pd;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/od;->c:Lyads/pd;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/od;

    iget-object p0, p0, Lyads/od;->c:Lyads/pd;

    invoke-direct {p1, p0, p2}, Lyads/od;-><init>(Lyads/pd;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/od;

    iget-object p0, p0, Lyads/od;->c:Lyads/pd;

    invoke-direct {p1, p0, p2}, Lyads/od;-><init>(Lyads/pd;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/od;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/od;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/od;->c:Lyads/pd;

    iget-object p1, p1, Lyads/pd;->e:Lmk2;

    iput v3, p0, Lyads/od;->b:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    instance-of p0, p1, Lyads/ae;

    if-eqz p0, :cond_3

    check-cast p1, Lyads/ae;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    iget-object p0, p1, Lyads/ae;->a:Lyads/kd;

    return-object p0

    :cond_4
    return-object v2
.end method
