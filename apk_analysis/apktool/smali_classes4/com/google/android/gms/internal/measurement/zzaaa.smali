.class public abstract Lcom/google/android/gms/internal/measurement/zzaaa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lvic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvic;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaa;->a:Lvic;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;)Lcom/google/android/gms/internal/measurement/zzaaa;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzaaa;->a:Lvic;

    return-object p0

    :cond_0
    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    new-instance v0, Lzic;

    invoke-direct {v0, p0, p1}, Lzic;-><init>(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-object v0

    :cond_1
    new-instance v0, Lajc;

    invoke-direct {v0, p0, p1}, Lajc;-><init>(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzzq;Ljava/lang/Object;)V
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()Ljava/util/Set;
.end method
