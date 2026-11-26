.class public final Lco1$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:[Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic n:I

.field public final synthetic o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic p:Lmu0;


# direct methods
.method public constructor <init>([Lhd3;ILjava/util/concurrent/atomic/AtomicInteger;Lmu0;Le02;)V
    .locals 0

    iput-object p1, p0, Lco1$a;->m:[Lhd3;

    iput p2, p0, Lco1$a;->n:I

    iput-object p3, p0, Lco1$a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lco1$a;->p:Lmu0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lco1$a;

    iget-object v3, p0, Lco1$a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lco1$a;->p:Lmu0;

    iget-object v1, p0, Lco1$a;->m:[Lhd3;

    iget v2, p0, Lco1$a;->n:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lco1$a;-><init>([Lhd3;ILjava/util/concurrent/atomic/AtomicInteger;Lmu0;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lco1$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lco1$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lco1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lco1$a;->l:I

    const/4 v2, 0x0

    iget-object v3, p0, Lco1$a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lco1$a;->p:Lmu0;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lco1$a;->m:[Lhd3;

    iget v1, p0, Lco1$a;->n:I

    aget-object p1, p1, v1

    new-instance v6, Lco1$a$a;

    invoke-direct {v6, v4, v1}, Lco1$a$a;-><init>(Lmu0;I)V

    iput v5, p0, Lco1$a;->l:I

    invoke-interface {p1, v6, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v4, v2}, Lmu0;->close(Ljava/lang/Throwable;)Z

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v4, v2}, Lmu0;->close(Ljava/lang/Throwable;)Z

    :cond_4
    throw p0
.end method
