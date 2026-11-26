.class public final Lkza;
.super Ln6c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzaz;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkza;->c:I

    iput-object p1, p0, Lkza;->d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    const/16 p1, 0x646

    invoke-direct {p0, p1}, Ln6c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzbb;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkza;->c:I

    .line 11
    iput-object p1, p0, Lkza;->d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    const/16 p1, 0x649

    invoke-direct {p0, p1}, Ln6c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzau;)V
    .locals 2

    iget v0, p0, Lkza;->c:I

    iget-object v1, p0, Lkza;->d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    iget-object p0, p0, Ln6c;->b:Lf4c;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/google/android/gms/internal/auth/zzbb;

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/auth/zzau;->zze(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzbb;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/auth/zzaz;

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/auth/zzau;->zzh(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzaz;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
