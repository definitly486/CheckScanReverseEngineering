.class public final Lkua;
.super Lcom/google/android/gms/internal/mlkit_common/zzaj;
.source "SourceFile"


# instance fields
.field public final transient d:Lrua;

.field public final transient e:Lnua;


# direct methods
.method public constructor <init>(Lrua;Lnua;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaj;-><init>()V

    iput-object p1, p0, Lkua;->d:Lrua;

    iput-object p2, p0, Lkua;->e:Lnua;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lkua;->e:Lnua;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lkua;->d:Lrua;

    invoke-virtual {p0, p1}, Lrua;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lkua;->e:Lnua;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzat;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lkua;->d:Lrua;

    iget p0, p0, Lrua;->g:I

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzas;
    .locals 1

    iget-object p0, p0, Lkua;->e:Lnua;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzat;

    move-result-object p0

    return-object p0
.end method
