.class public final synthetic Ljec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzto;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljec;->b:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p2, p0, Ljec;->c:Lcom/google/android/gms/internal/measurement/zzafc;

    iput p3, p0, Ljec;->d:I

    iput-object p4, p0, Ljec;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Ljec;->c:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-static {v0}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljec;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ljec;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-static {v2}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljec;->b:Lcom/google/android/gms/internal/measurement/zzto;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzto;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztj;

    new-instance v3, Lkec;

    invoke-direct {v3, v2}, Lkec;-><init>(Lcom/google/android/gms/internal/measurement/zztj;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v2

    sget-object v3, Ljn2;->INSTANCE:Ljn2;

    invoke-static {v0, v2, v3}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
