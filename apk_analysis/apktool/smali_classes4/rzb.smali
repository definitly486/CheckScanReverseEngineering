.class public final Lrzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrzb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrzb;->c:Ljava/lang/String;

    iput-object p4, p0, Lrzb;->d:Ljava/lang/String;

    iput-object p1, p0, Lrzb;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lrzb;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v2

    invoke-virtual {v2}, Lmdb;->zzg()V

    invoke-virtual {v2}, Lqhb;->a()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    new-instance v1, Lx5c;

    iget-object v3, p0, Lrzb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lrzb;->c:Ljava/lang/String;

    iget-object v5, p0, Lrzb;->d:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lx5c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method
