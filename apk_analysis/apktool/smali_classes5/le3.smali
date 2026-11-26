.class public final Lle3;
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
.field public final synthetic b:Ln07;

.field public final synthetic c:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "TT;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln07;Lid3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln07;",
            "Lid3<",
            "-TT;>;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lle3;->b:Ln07;

    iput-object p2, p0, Lle3;->c:Lid3;

    iput-object p3, p0, Lle3;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p2, Lle3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lle3$a;

    iget v1, v0, Lle3$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lle3$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lle3$a;

    invoke-direct {v0, p0, p2}, Lle3$a;-><init>(Lle3;Le02;)V

    :goto_0
    iget-object p2, v0, Lle3$a;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lle3$a;->o:I

    const/4 v3, 0x0

    iget-object v4, p0, Lle3;->c:Lid3;

    iget-object v5, p0, Lle3;->b:Ln07;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lle3$a;->l:Ljava/lang/Object;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p2, v5, Ln07;->b:Z

    if-eqz p2, :cond_6

    iput-object v3, v0, Lle3$a;->l:Ljava/lang/Object;

    iput v8, v0, Lle3$a;->o:I

    invoke-interface {v4, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    iput-object p1, v0, Lle3$a;->l:Ljava/lang/Object;

    iput v7, v0, Lle3$a;->o:I

    iget-object p0, p0, Lle3;->d:Lbm3;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_9

    iput-boolean v8, v5, Ln07;->b:Z

    iput-object v3, v0, Lle3$a;->l:Ljava/lang/Object;

    iput v6, v0, Lle3$a;->o:I

    invoke-interface {v4, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_9
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
