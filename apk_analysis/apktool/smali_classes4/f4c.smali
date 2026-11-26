.class public final Lf4c;
.super Lcom/google/android/gms/internal/auth/zzan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln6c;


# direct methods
.method public constructor <init>(Ln6c;)V
    .locals 0

    iput-object p1, p0, Lf4c;->a:Ln6c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzan;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p0, p0, Lf4c;->a:Ln6c;

    iget-object p0, p0, Ln1c;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object p0, p0, Lf4c;->a:Ln6c;

    iget-object p0, p0, Ln1c;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
