.class public final Lef3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Lj44<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lp07;


# direct methods
.method public constructor <init>(Lp07;Lid3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lef3;->b:Lid3;

    iput-object p1, p0, Lef3;->c:Lp07;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lef3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lef3$a;

    iget v1, v0, Lef3$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lef3$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lef3$a;

    invoke-direct {v0, p0, p2}, Lef3$a;-><init>(Lef3;Le02;)V

    :goto_0
    iget-object p2, v0, Lef3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lef3$a;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lj44;

    iget-object v2, p0, Lef3;->c:Lp07;

    iget v4, v2, Lp07;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lp07;->b:I

    if-ltz v4, :cond_4

    invoke-direct {p2, v4, p1}, Lj44;-><init>(ILjava/lang/Object;)V

    iput v3, v0, Lef3$a;->n:I

    iget-object p0, p0, Lef3;->b:Lid3;

    invoke-interface {p0, p2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Index overflow has happened"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
