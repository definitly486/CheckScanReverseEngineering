.class public final Lpb7;
.super Lf02;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;",
        "Lid3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final l:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final m:Lo22;

.field public final n:I

.field public o:Lo22;

.field public p:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "-",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lid3;Lo22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Lo22;",
            ")V"
        }
    .end annotation

    sget-object v0, Lvn5;->b:Lvn5;

    sget-object v1, Lgx2;->b:Lgx2;

    invoke-direct {p0, v0, v1}, Lf02;-><init>(Le02;Lo22;)V

    iput-object p1, p0, Lpb7;->l:Lid3;

    iput-object p2, p0, Lpb7;->m:Lo22;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lob7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p1, v0}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lpb7;->n:I

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1
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

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lpb7;->g(Le02;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p1

    new-instance v0, Lwq2;

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lwq2;-><init>(Lo22;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lpb7;->o:Lo22;

    throw p1
.end method

.method public final g(Le02;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object v0

    invoke-static {v0}, Lqb4;->e(Lo22;)V

    iget-object v1, p0, Lpb7;->o:Lo22;

    if-eq v1, v0, :cond_2

    instance-of v2, v1, Lwq2;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lrb7;

    invoke-direct {v2, p0}, Lrb7;-><init>(Lpb7;)V

    invoke-interface {v0, v1, v2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Lpb7;->n:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lpb7;->o:Lo22;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lpb7;->m:Lo22;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Lwq2;

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lwq2;->c:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but then emission attempt of value \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lna8;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Lpb7;->p:Le02;

    sget-object p1, Lqb7;->a:Ldm3;

    iget-object v0, p0, Lpb7;->l:Lid3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p0, Lpb7;->p:Le02;

    :cond_3
    return-object p1
.end method

.method public final getCallerFrame()Lb32;
    .locals 1

    iget-object p0, p0, Lpb7;->p:Le02;

    instance-of v0, p0, Lb32;

    if-eqz v0, :cond_0

    check-cast p0, Lb32;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lpb7;->o:Lo22;

    if-nez p0, :cond_0

    sget-object p0, Lgx2;->b:Lgx2;

    :cond_0
    return-object p0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lwq2;

    invoke-virtual {p0}, Lpb7;->getContext()Lo22;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lwq2;-><init>(Lo22;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lpb7;->o:Lo22;

    :cond_0
    iget-object p0, p0, Lpb7;->p:Le02;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    sget-object p0, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method
