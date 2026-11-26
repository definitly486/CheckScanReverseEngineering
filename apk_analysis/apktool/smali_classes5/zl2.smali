.class public final Lzl2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzl2$a;
    }
.end annotation


# instance fields
.field public final a:Lzs7;

.field public final b:Lzs7;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object v0

    iput-object v0, p0, Lzl2;->a:Lzs7;

    iput-object v0, p0, Lzl2;->b:Lzs7;

    return-void
.end method


# virtual methods
.method public final a(Lzl2$a;Lf02;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzl2;->a:Lzs7;

    invoke-virtual {p0, p1, p2}, Lzs7;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final b([Lzl2$a;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lzl2$a;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lzl2$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lzl2$b;

    iget v1, v0, Lzl2$b;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lzl2$b;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lzl2$b;

    invoke-direct {v0, p0, p2}, Lzl2$b;-><init>(Lzl2;Le02;)V

    :goto_0
    iget-object p2, v0, Lzl2$b;->o:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lzl2$b;->q:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lzl2$b;->n:I

    iget v2, v0, Lzl2$b;->m:I

    iget-object v4, v0, Lzl2$b;->l:[Ljava/lang/Object;

    check-cast v4, [Lzl2$a;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object p2, v4

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    array-length p2, p1

    const/4 v2, 0x0

    move v6, p2

    move-object p2, p1

    move p1, v6

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v4, p2, v2

    iput-object p2, v0, Lzl2$b;->l:[Ljava/lang/Object;

    iput v2, v0, Lzl2$b;->m:I

    iput p1, v0, Lzl2$b;->n:I

    iput v3, v0, Lzl2$b;->q:I

    iget-object v5, p0, Lzl2;->a:Lzs7;

    invoke-virtual {v5, v4, v0}, Lzs7;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final c(Ly22;Lbm3;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldf3;

    iget-object p0, p0, Lzl2;->a:Lzs7;

    invoke-direct {v0, p0, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {v0, p1}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method
