.class public final Lyads/ic3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/sc3;

.field public final synthetic d:Lyads/zc3;

.field public final synthetic e:Lyads/rd3;


# direct methods
.method public constructor <init>(Lyads/sc3;Lyads/zc3;Lyads/rd3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ic3;->c:Lyads/sc3;

    iput-object p2, p0, Lyads/ic3;->d:Lyads/zc3;

    iput-object p3, p0, Lyads/ic3;->e:Lyads/rd3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/ic3;

    iget-object v0, p0, Lyads/ic3;->c:Lyads/sc3;

    iget-object v1, p0, Lyads/ic3;->d:Lyads/zc3;

    iget-object p0, p0, Lyads/ic3;->e:Lyads/rd3;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/ic3;-><init>(Lyads/sc3;Lyads/zc3;Lyads/rd3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/ic3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/ic3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/ic3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ic3;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ic3;->c:Lyads/sc3;

    iget-object v1, p0, Lyads/ic3;->d:Lyads/zc3;

    iget-object v3, p0, Lyads/ic3;->e:Lyads/rd3;

    iput v2, p0, Lyads/ic3;->b:I

    invoke-static {p1, v1, v3, p0}, Lyads/sc3;->a(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
