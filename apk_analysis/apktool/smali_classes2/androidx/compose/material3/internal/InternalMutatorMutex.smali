.class public final Landroidx/compose/material3/internal/InternalMutatorMutex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final currentMutator:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Lyg5;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lch5;

    invoke-direct {v0}, Lch5;-><init>()V

    iput-object v0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lyg5;

    return-void
.end method

.method public static final synthetic access$getCurrentMutator$p(Landroidx/compose/material3/internal/InternalMutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Landroidx/compose/material3/internal/InternalMutatorMutex;)Lyg5;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lyg5;

    return-object p0
.end method

.method public static final synthetic access$tryMutateOrCancel(Landroidx/compose/material3/internal/InternalMutatorMutex;Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/InternalMutatorMutex;->tryMutateOrCancel(Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;)V

    return-void
.end method

.method public static synthetic mutate$default(Landroidx/compose/material3/internal/InternalMutatorMutex;Landroidx/compose/foundation/MutatePriority;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mutateWith$default(Landroidx/compose/material3/internal/InternalMutatorMutex;Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutateWith(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryMutateOrCancel(Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;->canInterrupt(Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Current mutation had a higher priority"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;->cancel()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public final mutate(Landroidx/compose/foundation/MutatePriority;Lnl3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lnl3<",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/internal/InternalMutatorMutex$mutate$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/compose/material3/internal/InternalMutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material3/internal/InternalMutatorMutex;Lnl3;Le02;)V

    invoke-static {v0, p3}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final mutateWith(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/internal/InternalMutatorMutex$mutateWith$2;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/InternalMutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material3/internal/InternalMutatorMutex;Lbm3;Ljava/lang/Object;Le02;)V

    invoke-static {v0, p4}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final tryMutate(Lll3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lyg5;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyg5;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lyg5;

    invoke-interface {p0, v1}, Lyg5;->unlock(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lyg5;

    invoke-interface {p0, v1}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_0
    return v0
.end method
