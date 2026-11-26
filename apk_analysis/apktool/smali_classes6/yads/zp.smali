.class public final Lyads/zp;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/bq;

.field public final synthetic d:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/bq;Lyads/n8;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/zp;->c:Lyads/bq;

    iput-object p2, p0, Lyads/zp;->d:Lyads/n8;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/zp;

    iget-object v0, p0, Lyads/zp;->c:Lyads/bq;

    iget-object p0, p0, Lyads/zp;->d:Lyads/n8;

    invoke-direct {p1, v0, p0, p2}, Lyads/zp;-><init>(Lyads/bq;Lyads/n8;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/zp;

    iget-object v0, p0, Lyads/zp;->c:Lyads/bq;

    iget-object p0, p0, Lyads/zp;->d:Lyads/n8;

    invoke-direct {p1, v0, p0, p2}, Lyads/zp;-><init>(Lyads/bq;Lyads/n8;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/zp;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zp;->b:I

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

    iget-object p1, p0, Lyads/zp;->c:Lyads/bq;

    iget-object v1, p1, Lyads/bq;->d:Lyads/uz4;

    iget-object v1, p0, Lyads/zp;->d:Lyads/n8;

    iget-object v1, v1, Lyads/n8;->h:Ljava/lang/String;

    if-nez v1, :cond_3

    iput v2, p0, Lyads/zp;->b:I

    invoke-virtual {p1, p0}, Lyads/bq;->a(Lyads/zp;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/zp;->c:Lyads/bq;

    iget-object p1, p1, Lyads/bq;->e:Lyads/cl0;

    iget-object v0, p0, Lyads/zp;->d:Lyads/n8;

    iget-object p1, p1, Lyads/cl0;->a:Lyads/g1;

    iget-object v1, p1, Lyads/g1;->b:Lyads/l13;

    invoke-virtual {v1, v0}, Lyads/l13;->a(Lyads/n8;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lyp1;

    invoke-direct {v1}, Lyp1;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lyads/zp;->c:Lyads/bq;

    iget-object p0, p0, Lyads/zp;->d:Lyads/n8;

    invoke-virtual {p1, p0}, Lyads/bq;->a(Lyads/n8;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "render"

    invoke-virtual {p1, p0, v0, v1}, Lyads/bq;->a(Lyads/n8;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
