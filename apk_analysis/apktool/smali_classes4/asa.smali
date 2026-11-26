.class public final Lasa;
.super Lmta;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lzsa;


# direct methods
.method public constructor <init>(Lzsa;)V
    .locals 0

    iput-object p1, p0, Lasa;->a:Lzsa;

    invoke-direct {p0}, Lcom/google/android/gms/auth/account/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Z)V
    .locals 1

    new-instance v0, Laua;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/zzal;->a:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-direct {v0, p1}, Laua;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lasa;->a:Lzsa;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
