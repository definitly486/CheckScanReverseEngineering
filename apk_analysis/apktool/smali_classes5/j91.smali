.class public final Lj91;
.super Lh91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lh91<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final f:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Lid3<",
            "-TR;>;TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldm3;Lhd3;Lo22;ILcu0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Lid3<",
            "-TR;>;-TT;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lhd3<",
            "+TT;>;",
            "Lo22;",
            "I",
            "Lcu0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4, p5, p3, p2}, Lh91;-><init>(ILcu0;Lo22;Lhd3;)V

    iput-object p1, p0, Lj91;->f:Ldm3;

    return-void
.end method


# virtual methods
.method public final i(Lo22;ILcu0;)Ld91;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Ld91<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lj91;

    iget-object v1, p0, Lj91;->f:Ldm3;

    iget-object v2, p0, Lh91;->e:Lhd3;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lj91;-><init>(Ldm3;Lhd3;Lo22;ILcu0;)V

    return-object v0
.end method

.method public final l(Lid3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TR;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lj91$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj91$a;-><init>(Lj91;Lid3;Le02;)V

    invoke-static {v0, p2}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
