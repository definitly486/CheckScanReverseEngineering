.class public final Lif6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmo3;


# instance fields
.field public final a:Ljf6;

.field public final b:Lc4;

.field public final c:Lzl2;

.field public final d:Lif6$b;


# direct methods
.method public constructor <init>(Ljf6;Lc4;Lzl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif6;->a:Ljf6;

    iput-object p2, p0, Lif6;->b:Lc4;

    iput-object p3, p0, Lif6;->c:Lzl2;

    iget-object p1, p3, Lzl2;->b:Lzs7;

    new-instance p2, Lif6$a;

    invoke-direct {p2, p1}, Lif6$a;-><init>(Lzs7;)V

    new-instance p1, Lif6$b;

    invoke-direct {p1, p2}, Lif6$b;-><init>(Lif6$a;)V

    iput-object p1, p0, Lif6;->d:Lif6$b;

    return-void
.end method


# virtual methods
.method public final a()Lif6$b;
    .locals 0

    iget-object p0, p0, Lif6;->d:Lif6$b;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lif6;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lhf6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lhf6;

    iget v1, v0, Lhf6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhf6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhf6;

    invoke-direct {v0, p0, p1}, Lhf6;-><init>(Lif6;Lf02;)V

    :goto_0
    iget-object p1, v0, Lhf6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lhf6;->n:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lif6;->b:Lc4;

    invoke-virtual {p1}, Lc4;->a()Lyz7;

    move-result-object p1

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {p1, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    iput v4, v0, Lhf6;->n:I

    new-instance v2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    new-instance v4, Lw87;

    invoke-direct {v4, v2}, Lw87;-><init>(Lc31;)V

    invoke-virtual {p1, v4}, Lmz7;->d(Lt08;)V

    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iput v3, v0, Lhf6;->n:I

    iget-object p1, p0, Lif6;->c:Lzl2;

    sget-object v2, Lzl2$a$f;->a:Lzl2$a$f;

    invoke-virtual {p1, v2, v0}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lif6;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lif6;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->G0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lif6;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->O0()I

    move-result p0

    return p0
.end method
