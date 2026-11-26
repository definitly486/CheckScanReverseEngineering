.class public final Lcom/google/android/gms/internal/measurement/zzvm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lufc;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Llp7;

.field public final f:Lnr7;


# direct methods
.method public constructor <init>(Ljs;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x7fffffff80000000L    # -1.0609978955E-314

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    new-instance v1, Llp7;

    invoke-direct {v1, v0}, Llp7;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->e:Llp7;

    new-instance v1, Lnr7;

    invoke-direct {v1}, Lnr7;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->f:Lnr7;

    new-instance v2, Lufc;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lufc;->b:Ljs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, v2, Lufc;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvm;->a:Lufc;

    invoke-virtual {v1, v2, v0}, Ll0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ll0;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    if-le v1, p1, :cond_1

    sget-object p0, Lu24$a;->i:Lu24$a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lu24$a;

    invoke-direct {p0}, Lu24$a;-><init>()V

    return-object p0

    :cond_1
    new-instance v1, Lyfc;

    invoke-direct {v1, p1}, Lyfc;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvm;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyfc;

    if-eqz v4, :cond_4

    iget v5, v4, Lyfc;->i:I

    if-gt v5, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lu24$a;->i:Lu24$a;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lu24$a;

    invoke-direct {p0}, Lu24$a;-><init>()V

    return-object p0

    :cond_4
    :goto_1
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    ushr-long v3, v4, v3

    long-to-int v0, v3

    if-le v0, p1, :cond_7

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ll0;->cancel(Z)Z

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->a:Lufc;

    iget-object v0, p1, Lufc;->b:Ljs;

    if-eqz v0, :cond_9

    iget-object p1, p1, Lufc;->c:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object p0

    new-instance v0, Ln39;

    invoke-direct {v0}, Lxh3;-><init>()V

    new-instance v2, Ln39$a;

    invoke-direct {v2, v0, p0}, Ln39$a;-><init>(Ln39;Ljs;)V

    iput-object v2, v0, Ln39;->j:Ly94;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-object v1

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->f:Lnr7;

    invoke-virtual {v1, p0}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-object v1

    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_4

    goto :goto_0
.end method

.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->f:Lnr7;

    invoke-virtual {v0}, Ll0;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    long-to-int v6, v1

    long-to-int v4, v4

    const/4 v5, 0x1

    add-int/2addr v6, v5

    int-to-long v7, v4

    int-to-long v9, v6

    shl-long v6, v7, v3

    const-wide v11, 0xffffffffL

    and-long v8, v9, v11

    or-long/2addr v6, v8

    invoke-virtual {v0, v1, v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lnr7;

    invoke-direct {v1}, Lnr7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    new-instance v0, Lwfc;

    invoke-direct {v0, p0, v4}, Lwfc;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object v0

    sget-object v2, Ljn2;->INSTANCE:Ljn2;

    new-instance v3, Ln39;

    invoke-direct {v3}, Lxh3;-><init>()V

    new-instance v6, Ln39$a;

    invoke-direct {v6, v3, v0}, Ln39$a;-><init>(Ln39;Ljs;)V

    iput-object v6, v3, Ln39;->j:Ly94;

    invoke-virtual {v2, v3}, Ljn2;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lvfc;

    invoke-direct {v2, p0, v4}, Lvfc;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvm;->e:Llp7;

    sget v6, Lp;->m:I

    new-instance v6, Lp$a;

    const-class v7, Ljava/lang/Throwable;

    invoke-direct {v6, v0, v7, v2}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v3, v6

    :goto_0
    invoke-virtual {v1, v3}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    new-instance v0, Lxfc;

    invoke-direct {v0, p0, v4}, Lxfc;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V

    new-instance v2, Lvub;

    invoke-direct {v2, p0, v1, v0, v5}, Lvub;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {v1, v2, p0}, Ll0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method
