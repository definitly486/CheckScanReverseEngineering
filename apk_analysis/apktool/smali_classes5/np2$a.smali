.class public final Lnp2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnp2;->collect(Lid3;Le02;)Ljava/lang/Object;
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
.field public final synthetic b:Lnp2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnp2<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnp2;Lr07;Lid3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnp2<",
            "TT;>;",
            "Lr07<",
            "Ljava/lang/Object;",
            ">;",
            "Lid3<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp2$a;->b:Lnp2;

    iput-object p2, p0, Lnp2$a;->c:Lr07;

    iput-object p3, p0, Lnp2$a;->d:Lid3;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Lnp2$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnp2$a$a;

    iget v1, v0, Lnp2$a$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnp2$a$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnp2$a$a;

    invoke-direct {v0, p0, p2}, Lnp2$a$a;-><init>(Lnp2$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lnp2$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lnp2$a$a;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lnp2$a;->b:Lnp2;

    iget-object v2, p2, Lnp2;->c:Lnl3;

    invoke-interface {v2, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lnp2$a;->c:Lr07;

    iget-object v5, v4, Lr07;->b:Ljava/lang/Object;

    sget-object v6, Laq5;->b:Lbh8;

    if-eq v5, v6, :cond_4

    iget-object p2, p2, Lnp2;->d:Lbm3;

    invoke-interface {p2, v5, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    :goto_1
    iput-object v2, v4, Lr07;->b:Ljava/lang/Object;

    iput v3, v0, Lnp2$a$a;->n:I

    iget-object p0, p0, Lnp2$a;->d:Lid3;

    invoke-interface {p0, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
