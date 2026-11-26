.class public final Lm91;
.super Ld91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld91<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lhd3<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lo22;ILcu0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhd3<",
            "+TT;>;>;",
            "Lo22;",
            "I",
            "Lcu0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Ld91;-><init>(Lo22;ILcu0;)V

    iput-object p1, p0, Lm91;->e:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final h(Lug6;Le02;)Ljava/lang/Object;
    .locals 3
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

    new-instance p2, Lyo7;

    invoke-direct {p2, p1}, Lyo7;-><init>(Lno7;)V

    iget-object p0, p0, Lm91;->e:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd3;

    new-instance v1, Lm91$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lm91$a;-><init>(Lhd3;Lyo7;Le02;)V

    const/4 v0, 0x3

    invoke-static {p1, v2, v2, v1, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

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

    new-instance v0, Lm91;

    iget-object p0, p0, Lm91;->e:Ljava/lang/Iterable;

    invoke-direct {v0, p0, p1, p2, p3}, Lm91;-><init>(Ljava/lang/Iterable;Lo22;ILcu0;)V

    return-object v0
.end method

.method public final k(Ly22;)Lqz6;
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

    new-instance v0, Lc91;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc91;-><init>(Ld91;Le02;)V

    sget-object v2, Lcu0;->SUSPEND:Lcu0;

    sget-object v3, Lc32;->DEFAULT:Lc32;

    const/4 v4, 0x4

    iget v5, p0, Ld91;->c:I

    invoke-static {v5, v2, v1, v4}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v1

    iget-object p0, p0, Ld91;->b:Lo22;

    invoke-static {p1, p0}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object p0

    new-instance p1, Ltg6;

    invoke-direct {p1, p0, v1}, La91;-><init>(Lo22;Lmu0;)V

    invoke-virtual {p1, v3, p1, v0}, La0;->m0(Lc32;La0;Lbm3;)V

    return-object p1
.end method
