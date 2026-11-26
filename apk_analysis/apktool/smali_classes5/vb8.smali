.class public final Lvb8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lys7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lzs7;

.field public final c:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Lid3<",
            "-TT;>;",
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
.method public constructor <init>(Lzs7;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb8;->b:Lzs7;

    iput-object p2, p0, Lvb8;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lvb8$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lvb8$a;

    iget v1, v0, Lvb8$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lvb8$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lvb8$a;

    invoke-direct {v0, p0, p2}, Lvb8$a;-><init>(Lvb8;Le02;)V

    :goto_0
    iget-object p2, v0, Lvb8$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lvb8$a;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lub8;

    iget-object v2, p0, Lvb8;->c:Lbm3;

    invoke-direct {p2, p1, v2}, Lub8;-><init>(Lid3;Lbm3;)V

    iput v4, v0, Lvb8$a;->n:I

    iget-object p0, p0, Lvb8;->b:Lzs7;

    invoke-static {p0, p2, v0}, Lzs7;->m(Lzs7;Lid3;Le02;)La32;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {}, Lh8;->d()V

    return-object v3
.end method
