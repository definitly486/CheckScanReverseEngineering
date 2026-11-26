.class public final Lf03;
.super Ls96;
.source "SourceFile"


# instance fields
.field public final l:Lsp7$b;

.field public final m:Lfh8;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    sget-object v0, Lsp7$b;->a:Lsp7$b;

    iput-object v0, p0, Lf03;->l:Lsp7$b;

    new-instance v0, Le03;

    invoke-direct {v0, p2, p1, p0}, Le03;-><init>(ILjava/lang/String;Lf03;)V

    new-instance p1, Lfh8;

    invoke-direct {p1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object p1, p0, Lf03;->m:Lfh8;

    return-void
.end method


# virtual methods
.method public final d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Lf03;->m:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmp7;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmp7;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lmp7;

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    sget-object v1, Lsp7$b;->a:Lsp7$b;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ls96;->a:Ljava/lang/String;

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lm96;->a(Lmp7;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lm96;->a(Lmp7;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getKind()Lsp7;
    .locals 0

    iget-object p0, p0, Lf03;->l:Lsp7$b;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ls96;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Lpp7;

    invoke-direct {v1, p0}, Lpp7;-><init>(Lf03;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v1}, Lpp7;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lpp7;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 p0, p0, 0x1f

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/2addr p0, v2

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Lqp7;

    invoke-direct {v0, p0}, Lqp7;-><init>(Lf03;)V

    iget-object p0, p0, Ls96;->a:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x38

    const-string v1, ", "

    const-string v3, ")"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
