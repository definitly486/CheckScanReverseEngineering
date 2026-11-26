.class public final Lcom/google/android/gms/internal/measurement/zzol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzoh;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzol;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzol;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/util/Set;Ljava/lang/String;)V
    .locals 8

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzol;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu;->zza()Lcom/google/android/gms/internal/measurement/zzbu;

    move-result-object v0

    new-instance v2, Lv9c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzbu;->zzb(Lcom/google/android/gms/internal/measurement/zzbt;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzm()[B

    move-result-object p1

    new-instance v0, Ls9c;

    invoke-direct {v0, p1}, Ls9c;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzol;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lx9c;

    invoke-direct {v3, p3, p1}, Lx9c;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lx9c;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lx9c;

    iget-object v5, v3, Lx9c;->b:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, p1}, Lx9c;->a([B)V

    goto :goto_0

    :cond_2
    new-instance v6, Lx9c;

    invoke-direct {v6, p3, p1}, Lx9c;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    if-gez v5, :cond_3

    new-array v5, v7, [Lx9c;

    aput-object v6, v5, v4

    aput-object v3, v5, v1

    goto :goto_3

    :cond_3
    new-array v5, v7, [Lx9c;

    aput-object v3, v5, v4

    aput-object v6, v5, v1

    goto :goto_3

    :cond_4
    move-object v3, v2

    check-cast v3, [Lx9c;

    invoke-static {v3, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    aget-object v0, v3, v5

    invoke-virtual {v0, p1}, Lx9c;->a([B)V

    goto :goto_0

    :cond_5
    not-int v5, v5

    array-length v6, v3

    add-int/lit8 v7, v6, 0x1

    sub-int/2addr v6, v5

    if-nez v6, :cond_6

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lx9c;

    goto :goto_2

    :cond_6
    new-array v7, v7, [Lx9c;

    invoke-static {v3, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v5, 0x1

    invoke-static {v3, v5, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :goto_2
    new-instance v4, Lx9c;

    invoke-direct {v4, p3, p1}, Lx9c;-><init>(Ljava/lang/String;[B)V

    aput-object v4, v3, v5

    move-object v5, v3

    :cond_7
    :goto_3
    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_7

    goto :goto_1

    :cond_9
    return-void
.end method
