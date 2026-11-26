.class public abstract Ld91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lo22;

.field public final c:I

.field public final d:Lcu0;


# direct methods
.method public constructor <init>(Lo22;ILcu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld91;->b:Lo22;

    iput p2, p0, Ld91;->c:I

    iput-object p3, p0, Ld91;->d:Lcu0;

    return-void
.end method


# virtual methods
.method public final c(Lo22;ILcu0;)Lhd3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ld91;->b:Lo22;

    invoke-interface {p1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    sget-object v1, Lcu0;->SUSPEND:Lcu0;

    iget-object v2, p0, Ld91;->d:Lcu0;

    iget v3, p0, Ld91;->c:I

    if-eq p3, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, -0x3

    if-ne v3, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_2
    const/4 p3, -0x2

    if-ne v3, p3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p2, v3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    move-object p3, v2

    :goto_2
    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v3, :cond_6

    if-ne p3, v2, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Ld91;->i(Lo22;ILcu0;)Ld91;

    move-result-object p0

    return-object p0
.end method

.method public collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lb91;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lb91;-><init>(Lid3;Ld91;Le02;)V

    invoke-static {v0, p2}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract h(Lug6;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug6<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract i(Lo22;ILcu0;)Ld91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Ld91<",
            "TT;>;"
        }
    .end annotation
.end method

.method public j()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Ly22;)Lqz6;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            ")",
            "Lqz6<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, -0x3

    iget v1, p0, Ld91;->c:I

    if-ne v1, v0, :cond_0

    const/4 v1, -0x2

    :cond_0
    sget-object v0, Lc32;->ATOMIC:Lc32;

    new-instance v2, Lc91;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc91;-><init>(Ld91;Le02;)V

    const/4 v4, 0x4

    iget-object v5, p0, Ld91;->d:Lcu0;

    invoke-static {v1, v5, v3, v4}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v1

    iget-object p0, p0, Ld91;->b:Lo22;

    invoke-static {p1, p0}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object p0

    new-instance p1, Ltg6;

    invoke-direct {p1, p0, v1}, La91;-><init>(Lo22;Lmu0;)V

    invoke-virtual {p1, v0, p1, v2}, La0;->m0(Lc32;La0;Lbm3;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ld91;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lgx2;->b:Lgx2;

    iget-object v2, p0, Ld91;->b:Lo22;

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "context="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, -0x3

    iget v2, p0, Ld91;->c:I

    if-eq v2, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "capacity="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcu0;->SUSPEND:Lcu0;

    iget-object v2, p0, Ld91;->d:Lcu0;

    if-eq v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onBufferOverflow="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x5b

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-static {v7, p0, v0}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
