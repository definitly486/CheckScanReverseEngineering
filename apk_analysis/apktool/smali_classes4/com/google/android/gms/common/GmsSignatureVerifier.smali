.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/common/zzah;->zzj()Lcom/google/android/gms/internal/common/zzah;

    invoke-static {}, Lcom/google/android/gms/internal/common/zzah;->zzj()Lcom/google/android/gms/internal/common/zzah;

    sget-object v0, Lu8c;->f:Lxpb;

    invoke-virtual {v0}, Lx3c;->g()[B

    move-result-object v1

    sget-object v2, Lu8c;->d:Lmhb;

    invoke-virtual {v2}, Lx3c;->g()[B

    move-result-object v2

    sget-object v3, Lu8c;->b:Ls8b;

    invoke-virtual {v3}, Lx3c;->g()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/common/zzah;->zzm(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzah;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v1

    sget-object v2, Lu8c;->e:Lamb;

    invoke-virtual {v2}, Lx3c;->g()[B

    move-result-object v3

    sget-object v4, Lu8c;->c:Lidb;

    invoke-virtual {v4}, Lx3c;->g()[B

    move-result-object v5

    sget-object v6, Lu8c;->a:Lw2b;

    invoke-virtual {v6}, Lx3c;->g()[B

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/common/zzah;->zzm(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzah;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const-string v5, "Either orderedTestCerts or orderedProdCerts must have at least one cert"

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/common/zzah;->zzj()Lcom/google/android/gms/internal/common/zzah;

    invoke-static {}, Lcom/google/android/gms/internal/common/zzah;->zzj()Lcom/google/android/gms/internal/common/zzah;

    invoke-virtual {v0}, Lx3c;->g()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzah;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzah;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v0

    invoke-virtual {v2}, Lx3c;->g()[B

    move-result-object v1

    invoke-virtual {v4}, Lx3c;->g()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/common/zzah;->zzl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzah;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzah;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
