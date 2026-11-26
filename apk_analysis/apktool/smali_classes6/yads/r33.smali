.class public final Lyads/r33;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kg0;


# direct methods
.method public constructor <init>(Lyads/kg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/r33;->a:Lyads/kg0;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lyads/q33;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/q33;

    iget v1, v0, Lyads/q33;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/q33;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/q33;

    invoke-direct {v0, p0, p1}, Lyads/q33;-><init>(Lyads/r33;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/q33;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/q33;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/r33;->a:Lyads/kg0;

    iput v4, v0, Lyads/q33;->d:I

    iget-object p1, p0, Lyads/kg0;->d:Lr22;

    new-instance v2, Lyads/jg0;

    invoke-direct {v2, p0, v3}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    invoke-static {p1, v2, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lyads/ef0;

    new-instance v0, Lyads/pf0;

    iget-object v1, p1, Lyads/ef0;->h:Ljava/util/List;

    iget-object v2, p1, Lyads/ef0;->a:Lyads/we0;

    iget-object p0, p1, Lyads/ef0;->b:Lyads/ng0;

    iget-boolean v3, p0, Lyads/ng0;->b:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lyads/ng0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lyads/pg0;->b:Lyads/pg0;

    goto :goto_2

    :cond_4
    sget-object v3, Lyads/pg0;->c:Lyads/pg0;

    goto :goto_2

    :cond_5
    sget-object v3, Lyads/pg0;->d:Lyads/pg0;

    :goto_2
    new-instance v4, Lyads/qg0;

    iget-object v5, p0, Lyads/ng0;->c:Ljava/util/List;

    invoke-direct {v4, v3, v5}, Lyads/qg0;-><init>(Lyads/pg0;Ljava/util/List;)V

    new-instance v3, Lyads/og0;

    iget-object p0, p0, Lyads/ng0;->a:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lyads/og0;-><init>(Ljava/lang/String;Lyads/qg0;)V

    iget-object v4, p1, Lyads/ef0;->c:Lyads/ld0;

    iget-object v5, p1, Lyads/ef0;->d:Lyads/ne0;

    iget-object v6, p1, Lyads/ef0;->e:Lyads/df0;

    iget-object v7, p1, Lyads/ef0;->f:Lyads/of0;

    invoke-direct/range {v0 .. v7}, Lyads/pf0;-><init>(Ljava/util/List;Lyads/we0;Lyads/og0;Lyads/ld0;Lyads/ne0;Lyads/df0;Lyads/of0;)V

    return-object v0
.end method
