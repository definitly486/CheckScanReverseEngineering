.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;


# instance fields
.field public final a:Lcom/google/firebase/components/Lazy;

.field public final b:Lcom/google/firebase/components/Lazy;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    sget-object p2, Lkx0;->e:Lkx0;

    invoke-static {p1}, Ld39;->b(Landroid/content/Context;)V

    invoke-static {}, Ld39;->a()Ld39;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld39;->c(Lkx0;)Lu29;

    move-result-object p1

    sget-object p2, Lkx0;->d:Ljava/util/Set;

    new-instance v0, Liy2;

    const-string v1, "json"

    invoke-direct {v0, v1}, Liy2;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(Lt29;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->a:Lcom/google/firebase/components/Lazy;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;-><init>(Lt29;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->b:Lcom/google/firebase/components/Lazy;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->zza()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->a:Lcom/google/firebase/components/Lazy;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq29;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->zza()I

    move-result v0

    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;->zzd(IZ)[B

    move-result-object p1

    new-instance v0, Lry;

    sget-object v1, Lig6;->VERY_LOW:Lig6;

    invoke-direct {v0, p1, v1, v2}, Lry;-><init>(Ljava/lang/Object;Lig6;Ldz;)V

    invoke-interface {p0, v0}, Lq29;->a(Lry;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->b:Lcom/google/firebase/components/Lazy;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq29;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->zza()I

    move-result v0

    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;->zzd(IZ)[B

    move-result-object p1

    new-instance v0, Lry;

    sget-object v1, Lig6;->VERY_LOW:Lig6;

    invoke-direct {v0, p1, v1, v2}, Lry;-><init>(Ljava/lang/Object;Lig6;Ldz;)V

    invoke-interface {p0, v0}, Lq29;->a(Lry;)V

    return-void
.end method
