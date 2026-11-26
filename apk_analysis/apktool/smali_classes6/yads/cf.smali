.class public final Lyads/cf;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/df;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lyads/df;JLe02;)V
    .locals 0

    iput-object p1, p0, Lyads/cf;->c:Lyads/df;

    iput-wide p2, p0, Lyads/cf;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static final a(Lxp1;)V
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3

    new-instance p1, Lyads/cf;

    iget-object v0, p0, Lyads/cf;->c:Lyads/df;

    iget-wide v1, p0, Lyads/cf;->d:J

    invoke-direct {p1, v0, v1, v2, p2}, Lyads/cf;-><init>(Lyads/df;JLe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/cf;

    iget-object v0, p0, Lyads/cf;->c:Lyads/df;

    iget-wide v1, p0, Lyads/cf;->d:J

    invoke-direct {p1, v0, v1, v2, p2}, Lyads/cf;-><init>(Lyads/df;JLe02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/cf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/cf;->b:I

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

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iget-object v1, p0, Lyads/cf;->c:Lyads/df;

    iget-object v1, v1, Lyads/df;->b:Landroid/os/Handler;

    new-instance v4, Lby2;

    invoke-direct {v4, p1, v3}, Lby2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v4, p0, Lyads/cf;->d:J

    new-instance v1, Lyads/bf;

    invoke-direct {v1, p1, v2}, Lyads/bf;-><init>(Lxp1;Le02;)V

    iput v3, p0, Lyads/cf;->b:I

    invoke-static {v4, v5, v1, p0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
