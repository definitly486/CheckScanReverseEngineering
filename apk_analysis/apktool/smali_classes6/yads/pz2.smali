.class public final Lyads/pz2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/qz2;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/qz2;Ljava/util/List;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/pz2;->c:Lyads/qz2;

    iput-object p2, p0, Lyads/pz2;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/pz2;

    iget-object v0, p0, Lyads/pz2;->c:Lyads/qz2;

    iget-object p0, p0, Lyads/pz2;->d:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lyads/pz2;-><init>(Lyads/qz2;Ljava/util/List;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/pz2;

    iget-object v0, p0, Lyads/pz2;->c:Lyads/qz2;

    iget-object p0, p0, Lyads/pz2;->d:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lyads/pz2;-><init>(Lyads/qz2;Ljava/util/List;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/pz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/pz2;->b:I

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

    iget-object p1, p0, Lyads/pz2;->c:Lyads/qz2;

    iget-object p1, p1, Lyads/qz2;->a:Lyads/bz2;

    iget-object v1, p0, Lyads/pz2;->d:Ljava/util/List;

    iput v3, p0, Lyads/pz2;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/zy2;

    invoke-direct {v3, v1, p1, v2}, Lyads/zy2;-><init>(Ljava/util/List;Lyads/bz2;Le02;)V

    invoke-static {v3, p0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
