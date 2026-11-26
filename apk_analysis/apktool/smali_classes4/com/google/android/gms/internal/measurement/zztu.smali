.class public final Lcom/google/android/gms/internal/measurement/zztu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Lcom/google/android/gms/internal/measurement/zzru;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/google/android/gms/internal/measurement/zzvc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvc;->zza:Lcom/google/android/gms/internal/measurement/zzvc;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zztu;->d:Lcom/google/android/gms/internal/measurement/zzvc;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zztu;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/measurement/zztu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztu;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzru;)Lcom/google/android/gms/internal/measurement/zztu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztu;->b:Lcom/google/android/gms/internal/measurement/zzru;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzuw;)Lcom/google/android/gms/internal/measurement/zztu;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzti;->zza:Lcom/google/android/gms/internal/measurement/zzti;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztu;->c:Ljava/util/HashMap;

    const-string v1, "singleproc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "There is already a factory registered for the ID %s"

    invoke-static {v2, v3, v1}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zztt;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zztt;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztu;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztu;->b:Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztu;->d:Lcom/google/android/gms/internal/measurement/zzvc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zztu;->c:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/measurement/zztt;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/internal/measurement/zzvc;Ljava/util/HashMap;)V

    return-object v0
.end method
