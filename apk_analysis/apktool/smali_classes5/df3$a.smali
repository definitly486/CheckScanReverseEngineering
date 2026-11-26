.class public final Ldf3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldf3;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.field public final synthetic c:Lbm3;


# direct methods
.method public constructor <init>(Lid3;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf3$a;->b:Lid3;

    iput-object p2, p0, Ldf3$a;->c:Lbm3;

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

    instance-of v0, p2, Ldf3$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ldf3$a$a;

    iget v1, v0, Ldf3$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ldf3$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Ldf3$a$a;

    invoke-direct {v0, p0, p2}, Ldf3$a$a;-><init>(Ldf3$a;Le02;)V

    :goto_0
    iget-object p2, v0, Ldf3$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ldf3$a$a;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p0, v0, Ldf3$a$a;->q:I

    iget-object p1, v0, Ldf3$a$a;->p:Lid3;

    iget-object v2, v0, Ldf3$a$a;->o:Ljava/lang/Object;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Ldf3$a$a;->o:Ljava/lang/Object;

    iget-object p2, p0, Ldf3$a;->b:Lid3;

    iput-object p2, v0, Ldf3$a$a;->p:Lid3;

    const/4 v2, 0x0

    iput v2, v0, Ldf3$a$a;->q:I

    iput v4, v0, Ldf3$a$a;->m:I

    iget-object p0, p0, Ldf3$a;->c:Lbm3;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v2

    move-object v2, p1

    move-object p1, p2

    :goto_1
    iput-object v5, v0, Ldf3$a$a;->o:Ljava/lang/Object;

    iput-object v5, v0, Ldf3$a$a;->p:Lid3;

    iput p0, v0, Ldf3$a$a;->q:I

    iput v3, v0, Ldf3$a$a;->m:I

    invoke-interface {p1, v2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
