.class public final Lcom/google/android/gms/internal/measurement/zzaic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzaic;


# instance fields
.field public final b:Lld8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaie;-><init>()V

    new-instance v1, Lld8$c;

    invoke-direct {v1, v0}, Lld8$c;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaic;->b:Lld8$c;

    return-void
.end method

.method public static zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzb()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()D
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zzc()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaid;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaic;->zzg()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzaid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaic;->b:Lld8$c;

    iget-object p0, p0, Lld8$c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaid;

    return-object p0
.end method
