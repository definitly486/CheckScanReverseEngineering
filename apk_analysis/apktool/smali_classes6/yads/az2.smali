.class public final Lyads/az2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:[B

.field public final synthetic d:Lyads/bz2;

.field public final synthetic e:Lyads/cz2;


# direct methods
.method public constructor <init>([BLyads/bz2;Lyads/cz2;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/az2;->c:[B

    iput-object p2, p0, Lyads/az2;->d:Lyads/bz2;

    iput-object p3, p0, Lyads/az2;->e:Lyads/cz2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/az2;

    iget-object v0, p0, Lyads/az2;->c:[B

    iget-object v1, p0, Lyads/az2;->d:Lyads/bz2;

    iget-object p0, p0, Lyads/az2;->e:Lyads/cz2;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/az2;-><init>([BLyads/bz2;Lyads/cz2;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/az2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/az2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/az2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/az2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/az2;->c:[B

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    iget-object v1, p0, Lyads/az2;->d:Lyads/bz2;

    iget-object v1, v1, Lyads/bz2;->b:Lyads/rz2;

    iget-object v4, p0, Lyads/az2;->e:Lyads/cz2;

    iput v3, p0, Lyads/az2;->b:I

    iget-object v1, v1, Lyads/rz2;->a:Lyads/ry2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    new-instance v5, Lyads/qy2;

    invoke-direct {v5, v1, v4, p1, v2}, Lyads/qy2;-><init>(Lyads/ry2;Lyads/cz2;[BLe02;)V

    invoke-static {v3, v5, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
