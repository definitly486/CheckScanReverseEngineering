.class public final Lf1b;
.super Lp1b;
.source "SourceFile"


# instance fields
.field public final synthetic r:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzcr;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lf1b;->r:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lp1b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Lf1b;->r:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/zzel;->zzb(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/location/zzel;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzcr;->a(Lp1b;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/location/zzec;->zzF(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
