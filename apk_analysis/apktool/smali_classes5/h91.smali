.class public abstract Lh91;
.super Ld91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ld91<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcu0;Lo22;Lhd3;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Ld91;-><init>(Lo22;ILcu0;)V

    iput-object p4, p0, Lh91;->e:Lhd3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 4
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

    iget v0, p0, Ld91;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lit1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lit1;-><init>(I)V

    iget-object v3, p0, Ld91;->b:Lo22;

    invoke-interface {v3, v1, v2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lh91;->l(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-interface {v1, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v3

    invoke-interface {v0, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    invoke-static {v3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object v0

    instance-of v2, p1, Lyo7;

    if-nez v2, :cond_4

    instance-of v2, p1, Llo5;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lg59;

    invoke-direct {v2, p1, v0}, Lg59;-><init>(Lid3;Lo22;)V

    move-object p1, v2

    :cond_4
    :goto_1
    new-instance v0, Lg91;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lg91;-><init>(Lh91;Le02;)V

    invoke-static {v1}, Llt8;->b(Lo22;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0, v0, p2}, Lf91;->a(Lo22;Ljava/lang/Object;Ljava/lang/Object;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    invoke-super {p0, p1, p2}, Ld91;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_7

    return-object p0

    :cond_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final h(Lug6;Le02;)Ljava/lang/Object;
    .locals 1
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

    new-instance v0, Lyo7;

    invoke-direct {v0, p1}, Lyo7;-><init>(Lno7;)V

    invoke-virtual {p0, v0, p2}, Lh91;->l(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public abstract l(Lid3;Le02;)Ljava/lang/Object;
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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh91;->e:Lhd3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ld91;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
