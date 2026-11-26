.class public final Lcom/google/android/gms/internal/measurement/zzzt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltic;

.field public static final b:Luic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltic;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->a:Ltic;

    new-instance v0, Luic;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->b:Luic;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzzm;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzm;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzt;->b:Luic;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzm;->zza(Lcom/google/android/gms/internal/measurement/zzzo;)Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v2, "key"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzzm;->b:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzzm;->a:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v2

    const-string v3, "key must be repeating"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzabr;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzm;->e:Lric;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzm;->d:Lqic;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
