.class public final Lyads/vq;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/wq;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyads/wq;Ljava/lang/Object;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/vq;->c:Lyads/wq;

    iput-object p2, p0, Lyads/vq;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/vq;

    iget-object v0, p0, Lyads/vq;->c:Lyads/wq;

    iget-object p0, p0, Lyads/vq;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Lyads/vq;-><init>(Lyads/wq;Ljava/lang/Object;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/vq;

    iget-object v0, p0, Lyads/vq;->c:Lyads/wq;

    iget-object p0, p0, Lyads/vq;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Lyads/vq;-><init>(Lyads/wq;Ljava/lang/Object;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/vq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/vq;->b:I

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

    iget-object p1, p0, Lyads/vq;->c:Lyads/wq;

    iget-object v1, p1, Lyads/wq;->e:Lyads/zq;

    iget-object p1, p1, Lyads/wq;->b:Lyads/n8;

    iget-object v3, p0, Lyads/vq;->d:Ljava/lang/Object;

    iput v2, p0, Lyads/vq;->b:I

    invoke-virtual {v1, p1, v3, p0}, Lyads/zq;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lyads/vq;->c:Lyads/wq;

    iget-object v0, p1, Lyads/wq;->d:Lyads/g1;

    iget-object p1, p1, Lyads/wq;->b:Lyads/n8;

    iget-object v1, p0, Lyads/vq;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/vq;->c:Lyads/wq;

    iget-object p0, p0, Lyads/wq;->a:Lc31;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-object p1
.end method
