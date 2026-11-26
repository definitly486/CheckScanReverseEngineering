.class public final Lj91$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj91$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ly22;

.field public final synthetic d:Lj91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj91<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr07;Ly22;Lj91;Lid3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Lmb4;",
            ">;",
            "Ly22;",
            "Lj91<",
            "TT;TR;>;",
            "Lid3<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj91$a$a;->b:Lr07;

    iput-object p2, p0, Lj91$a$a;->c:Ly22;

    iput-object p3, p0, Lj91$a$a;->d:Lj91;

    iput-object p4, p0, Lj91$a$a;->e:Lid3;

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

    instance-of v0, p2, Lj91$a$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lj91$a$a$b;

    iget v1, v0, Lj91$a$a$b;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lj91$a$a$b;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lj91$a$a$b;

    invoke-direct {v0, p0, p2}, Lj91$a$a$b;-><init>(Lj91$a$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lj91$a$a$b;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lj91$a$a$b;->p:I

    const/4 v3, 0x0

    iget-object v4, p0, Lj91$a$a;->b:Lr07;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lj91$a$a$b;->l:Ljava/lang/Object;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, v4, Lr07;->b:Ljava/lang/Object;

    check-cast p2, Lmb4;

    if-eqz p2, :cond_3

    new-instance v2, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    invoke-direct {v2}, Lkotlinx/coroutines/flow/internal/ChildCancelledException;-><init>()V

    invoke-interface {p2, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    iput-object p1, v0, Lj91$a$a$b;->l:Ljava/lang/Object;

    iput-object p2, v0, Lj91$a$a$b;->m:Lmb4;

    iput v5, v0, Lj91$a$a$b;->p:I

    invoke-interface {p2, v0}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lc32;->UNDISPATCHED:Lc32;

    new-instance v0, Lj91$a$a$a;

    iget-object v1, p0, Lj91$a$a;->d:Lj91;

    iget-object v2, p0, Lj91$a$a;->e:Lid3;

    invoke-direct {v0, v1, v2, p1, v3}, Lj91$a$a$a;-><init>(Lj91;Lid3;Ljava/lang/Object;Le02;)V

    iget-object p0, p0, Lj91$a$a;->c:Ly22;

    invoke-static {p0, v3, p2, v0, v5}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, v4, Lr07;->b:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
