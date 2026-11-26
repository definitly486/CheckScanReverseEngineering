.class public final synthetic Liec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzto;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzto;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Liec;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iput p1, p0, Liec;->b:I

    iput-object p3, p0, Liec;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Liec;->b:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Liec;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-static {v2}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Liec;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzto;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zztj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/j;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/j;

    move-result-object p0

    new-instance p1, Lry0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    new-instance v1, Lgo1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Llb;-><init>(Lcom/google/common/collect/i;Z)V

    new-instance p0, Lgo1$b;

    invoke-direct {p0, v1, p1, v0}, Lgo1$b;-><init>(Lgo1;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p0, v1, Lgo1;->p:Lgo1$c;

    invoke-virtual {v1}, Llb;->s()V

    return-object v1
.end method
