.class public final Lcom/google/android/gms/internal/measurement/zzabe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lfpa;

.field public static final c:Lcom/google/android/gms/internal/measurement/zzabe;

.field public static final synthetic zza:I


# instance fields
.field public final a:Lqpa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfpa;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabe;->b:Lfpa;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabe;

    new-instance v1, Lqpa;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1}, Lqpa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabe;-><init>(Lqpa;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabe;->c:Lcom/google/android/gms/internal/measurement/zzabe;

    return-void
.end method

.method public constructor <init>(Lqpa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzabe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabe;->c:Lcom/google/android/gms/internal/measurement/zzabe;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzabe;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzabe;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {p0}, Lqpa;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {p0}, Lqpa;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzabe;)Lcom/google/android/gms/internal/measurement/zzabe;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lqpa;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzabe;

    new-instance v1, Lqpa;

    invoke-direct {v1, p0, v0}, Lqpa;-><init>(Lqpa;Lqpa;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzabe;-><init>(Lqpa;)V

    return-object p1

    :cond_1
    return-object p0
.end method
