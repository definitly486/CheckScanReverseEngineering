.class public final synthetic Llec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzto;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzto;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llec;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p3, p0, Llec;->b:Ljava/util/ArrayList;

    iput p1, p0, Llec;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafc;

    iget-object v0, p0, Llec;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/j;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/j;

    move-result-object v1

    new-instance v2, Ljec;

    iget-object v3, p0, Llec;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iget p0, p0, Llec;->c:I

    invoke-direct {v2, v3, p1, p0, v0}, Ljec;-><init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/ArrayList;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object p0

    iget-object p1, v3, Lcom/google/android/gms/internal/measurement/zzto;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lgo1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llb;-><init>(Lcom/google/common/collect/i;Z)V

    new-instance v1, Lgo1$a;

    invoke-direct {v1, v0, p0, p1}, Lgo1$a;-><init>(Lgo1;Ljs;Ljava/util/concurrent/Executor;)V

    iput-object v1, v0, Lgo1;->p:Lgo1$c;

    invoke-virtual {v0}, Llb;->s()V

    return-object v0
.end method
