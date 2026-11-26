.class public final Lcom/google/android/gms/internal/measurement/zzto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# static fields
.field public static final synthetic zza:I


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzto;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzto;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zza(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/measurement/zzto;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzto;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzto;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzth;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzto;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zztj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zztj;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Llec;

    invoke-direct {v0, v1, p0, v2}, Llec;-><init>(ILcom/google/android/gms/internal/measurement/zzto;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v0

    sget-object v3, Ljn2;->INSTANCE:Ljn2;

    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzth;->zza(Lks;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Liec;

    invoke-direct {v0, v1, p0, v2}, Liec;-><init>(ILcom/google/android/gms/internal/measurement/zzto;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object p0

    invoke-static {p1, p0, v3}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    return-object p0
.end method
