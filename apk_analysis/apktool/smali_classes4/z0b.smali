.class public final Lz0b;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "SourceFile"


# instance fields
.field public final transient d:Lm1b;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public constructor <init>(Lm1b;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    iput-object p1, p0, Lz0b;->d:Lm1b;

    iput-object p2, p0, Lz0b;->e:[Ljava/lang/Object;

    iput p3, p0, Lz0b;->f:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzca;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lz0b;->d:Lm1b;

    invoke-virtual {p0, v0}, Lm1b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 1

    new-instance v0, Lv0b;

    invoke-direct {v0, p0}, Lv0b;-><init>(Lz0b;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lz0b;->f:I

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzcs;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object p0

    return-object p0
.end method
