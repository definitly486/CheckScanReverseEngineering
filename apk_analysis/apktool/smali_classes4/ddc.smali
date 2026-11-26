.class public final synthetic Lddc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzrf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddc;->b:Lcom/google/android/gms/internal/measurement/zzrf;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lddc;->b:Lcom/google/android/gms/internal/measurement/zzrf;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->c:Lkd8;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->b:Lkd8;

    invoke-interface {v1}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sget v2, Lxh3;->i:I

    instance-of v2, v1, Lxh3;

    if-eqz v2, :cond_0

    check-cast v1, Lxh3;

    goto :goto_0

    :cond_0
    new-instance v2, Lfj3;

    invoke-direct {v2, v1}, Lfj3;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object v1, v2

    :goto_0
    sget v2, Lp;->m:I

    new-instance v2, Lp$b;

    const-class v3, Lcom/google/android/gms/internal/measurement/zzmk;

    sget-object v4, Lucc;->b:Lucc;

    invoke-direct {v2, v1, v3, v4}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lzcc;

    invoke-direct {v1, p0}, Lzcc;-><init>(Lcom/google/android/gms/internal/measurement/zzrf;)V

    sget p0, Lx1;->l:I

    new-instance p0, Lx1$b;

    invoke-direct {p0, v2, v1}, Lx1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Ladc;

    invoke-direct {v1, p0}, Ladc;-><init>(Lxh3;)V

    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method
