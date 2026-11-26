.class public final Ld09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb09;


# instance fields
.field public final a:Lxy8;


# direct methods
.method public constructor <init>(Lxy8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld09;->a:Lxy8;

    return-void
.end method


# virtual methods
.method public final a(Lez8;)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lez8;",
            ")",
            "Lmz7<",
            "Lgz8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0, p1}, Lxy8;->a(Lez8;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lwz8;)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwz8;",
            ")",
            "Lmz7<",
            "Lyz8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0, p1}, Lxy8;->b(Lwz8;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ltz8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0}, Lxy8;->c()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lwz8;Luo7;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0, p1, p2}, Lxy8;->e(Lwz8;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lc09;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc09;

    iget v1, v0, Lc09;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc09;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc09;

    invoke-direct {v0, p0, p1}, Lc09;-><init>(Ld09;Lf02;)V

    :goto_0
    iget-object p1, v0, Lc09;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lc09;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lc09;->n:I

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0, v0}, Lxy8;->d(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Li19;

    invoke-virtual {p1}, Li19;->a()Lu09;

    move-result-object p0

    return-object p0
.end method

.method public final f(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lbz8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld09;->a:Lxy8;

    invoke-interface {p0, p1, p2}, Lxy8;->f(J)Lmz7;

    move-result-object p0

    return-object p0
.end method
