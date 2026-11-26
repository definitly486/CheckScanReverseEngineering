.class public Lvwa;
.super Lyxa;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Collection;)Lwxa;
    .locals 2

    check-cast p2, Ljava/util/List;

    instance-of v0, p2, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lmxa;

    invoke-direct {v0, p0, p1, p2, v1}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    return-object v0

    :cond_0
    new-instance v0, Lwxa;

    invoke-direct {v0, p0, p1, p2, v1}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lyxa;->zzj(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lyxa;->zzk(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
