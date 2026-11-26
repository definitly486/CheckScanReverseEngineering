.class public abstract Ljya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;


# instance fields
.field public transient b:Lcya;

.field public transient c:Lkxa;

.field public transient d:Lfxa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzv()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Ljya;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljya;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zzt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzu()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Ljya;->b:Lcya;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lyxa;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    if-eqz v1, :cond_0

    new-instance v1, Lgya;

    invoke-direct {v1, v0}, Lcya;-><init>(Lyxa;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcya;

    invoke-direct {v1, v0}, Lcya;-><init>(Lyxa;)V

    :goto_0
    iput-object v1, p0, Ljya;->b:Lcya;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final zzv()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Ljya;->d:Lfxa;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyxa;

    new-instance v1, Lfxa;

    iget-object v2, v0, Lyxa;->e:Lp0b;

    invoke-direct {v1, v0, v2}, Lfxa;-><init>(Lyxa;Lp0b;)V

    iput-object v1, p0, Ljya;->d:Lfxa;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzw()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Ljya;->c:Lkxa;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyxa;

    new-instance v1, Lkxa;

    iget-object v2, v0, Lyxa;->e:Lp0b;

    invoke-direct {v1, v0, v2}, Lkxa;-><init>(Lyxa;Lp0b;)V

    iput-object v1, p0, Ljya;->c:Lkxa;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzx(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Ljya;->zzv()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lfxa;

    invoke-virtual {p0, p1}, Lfxa;->a(Ljava/lang/Object;)Lwxa;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lwxa;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzy(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Ljya;->zzv()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lfxa;

    invoke-virtual {p0, p1}, Lfxa;->a(Ljava/lang/Object;)Lwxa;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lwxa;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
