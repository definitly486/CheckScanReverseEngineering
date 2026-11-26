.class public final Ltqa;
.super Lmta;
.source "SourceFile"


# instance fields
.field public final synthetic a:Llra;


# direct methods
.method public constructor <init>(Llra;)V
    .locals 0

    iput-object p1, p0, Ltqa;->a:Llra;

    invoke-direct {p0}, Lcom/google/android/gms/auth/account/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/accounts/Account;)V
    .locals 2

    new-instance v0, Lqta;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzal;->a:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-direct {v0, v1, p1}, Lqta;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    iget-object p0, p0, Ltqa;->a:Llra;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
