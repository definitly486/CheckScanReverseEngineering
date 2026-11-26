.class public final Li91;
.super Lh91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lh91<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhd3;Lo22;ILcu0;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    sget-object p2, Lgx2;->b:Lgx2;

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lcu0;->SUSPEND:Lcu0;

    :cond_2
    invoke-direct {p0, p3, p4, p2, p1}, Lh91;-><init>(ILcu0;Lo22;Lhd3;)V

    return-void
.end method


# virtual methods
.method public final i(Lo22;ILcu0;)Ld91;
    .locals 1
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

    new-instance v0, Li91;

    iget-object p0, p0, Lh91;->e:Lhd3;

    invoke-direct {v0, p2, p3, p1, p0}, Lh91;-><init>(ILcu0;Lo22;Lhd3;)V

    return-object v0
.end method

.method public final j()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lh91;->e:Lhd3;

    return-object p0
.end method

.method public final l(Lid3;Le02;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Lh91;->e:Lhd3;

    invoke-interface {p0, p1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
