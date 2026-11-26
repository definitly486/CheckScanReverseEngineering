.class public final Lyads/pj2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lyads/qj2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/qj2;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/pj2;->c:Ljava/util/List;

    iput-object p2, p0, Lyads/pj2;->d:Lyads/qj2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/pj2;

    iget-object v1, p0, Lyads/pj2;->c:Ljava/util/List;

    iget-object p0, p0, Lyads/pj2;->d:Lyads/qj2;

    invoke-direct {v0, v1, p0, p2}, Lyads/pj2;-><init>(Ljava/util/List;Lyads/qj2;Le02;)V

    iput-object p1, v0, Lyads/pj2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/pj2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/pj2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/pj2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/pj2;->b:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v0, p0, Lyads/pj2;->c:Ljava/util/List;

    iget-object p0, p0, Lyads/pj2;->d:Lyads/qj2;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lyads/oj2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lyads/oj2;-><init>(Lyads/qj2;Ljava/lang/String;Le02;)V

    const/4 v1, 0x3

    invoke-static {p1, v3, v3, v2, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
