.class public final Lqd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd3;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lqd3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lqd3$a;

    iget v1, v0, Lqd3$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqd3$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqd3$a;

    invoke-direct {v0, p0, p2}, Lqd3$a;-><init>(Lqd3;Le02;)V

    :goto_0
    iget-object p2, v0, Lqd3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lqd3$a;->m:I

    iget-object p0, p0, Lqd3;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lqd3$a;->r:I

    iget v2, v0, Lqd3$a;->q:I

    iget v4, v0, Lqd3$a;->p:I

    iget-object v5, v0, Lqd3$a;->o:Lid3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object p2, v5

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    array-length p2, p0

    const/4 v2, 0x0

    move v4, p2

    move-object p2, p1

    move p1, v4

    move v4, v2

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v5, p0, v2

    iput-object p2, v0, Lqd3$a;->o:Lid3;

    iput v4, v0, Lqd3$a;->p:I

    iput v2, v0, Lqd3$a;->q:I

    iput p1, v0, Lqd3$a;->r:I

    iput v3, v0, Lqd3$a;->m:I

    invoke-interface {p2, v5, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
