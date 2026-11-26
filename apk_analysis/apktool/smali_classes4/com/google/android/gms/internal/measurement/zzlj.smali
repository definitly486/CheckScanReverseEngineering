.class public final Lcom/google/android/gms/internal/measurement/zzlj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lkd8;

.field public c:Lkd8;

.field public d:Li2c;

.field public e:Lkd8;

.field public f:Lf2c;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzlj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzlk;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lkd8;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->m:Lkd8;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lkd8;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lkd8;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v1, Lt2c;

    invoke-direct {v1, v0}, Lt2c;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lkd8;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Li2c;

    if-nez v0, :cond_2

    new-instance v0, Li2c;

    invoke-direct {v0, p0}, Li2c;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Li2c;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lkd8;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzsx;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Lq2c;

    invoke-direct {v0, v1}, Lq2c;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lkd8;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lf2c;

    if-nez v0, :cond_4

    new-instance v0, Lf2c;

    invoke-direct {v0, p0}, Lf2c;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lf2c;

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lkd8;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lkd8;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Li2c;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lkd8;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lf2c;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Landroid/content/Context;Lkd8;Lkd8;Li2c;Lkd8;Lf2c;)V

    return-object v1
.end method
