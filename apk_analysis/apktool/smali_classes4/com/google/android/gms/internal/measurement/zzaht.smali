.class public final Lcom/google/android/gms/internal/measurement/zzaht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzaht;


# instance fields
.field public final b:Lld8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaht;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaht;->c:Lcom/google/android/gms/internal/measurement/zzaht;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzahv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzahv;-><init>()V

    new-instance v1, Lld8$c;

    invoke-direct {v1, v0}, Lld8$c;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaht;->b:Lld8$c;

    return-void
.end method

.method public static zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaht;->c:Lcom/google/android/gms/internal/measurement/zzaht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaht;->zzc()Lcom/google/android/gms/internal/measurement/zzahu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzahu;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzb()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaht;->c:Lcom/google/android/gms/internal/measurement/zzaht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaht;->zzc()Lcom/google/android/gms/internal/measurement/zzahu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzahu;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaht;->zzc()Lcom/google/android/gms/internal/measurement/zzahu;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzahu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaht;->b:Lld8$c;

    iget-object p0, p0, Lld8$c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzahu;

    return-object p0
.end method
