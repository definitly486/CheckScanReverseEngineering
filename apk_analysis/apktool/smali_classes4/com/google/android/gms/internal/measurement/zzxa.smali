.class public final Lcom/google/android/gms/internal/measurement/zzxa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->zzi(Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v1

    :cond_1
    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzwz;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzwz;-><init>(Lr07;Lcom/google/android/gms/internal/measurement/zzws;Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public static final zzb(Ljs;)Ljs;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->zzi(Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzwx;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Ljs;)V

    return-object v0
.end method

.method public static final zzc(Lks;)Lks;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->zzi(Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lks;)V

    return-object v0
.end method
