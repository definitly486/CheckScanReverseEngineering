.class public final Lm5b;
.super Lcom/google/android/gms/internal/location/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lm5b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm5b;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/location/zzk;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzk;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lm5b;->a:Ljava/lang/Object;

    iget-object p0, p0, Lm5b;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 0

    return-void
.end method
