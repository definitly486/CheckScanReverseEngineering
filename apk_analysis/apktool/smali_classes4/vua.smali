.class public final Lvua;
.super Lmwa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Landroid/app/PendingIntent;

.field public final synthetic s:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    iput-object p3, p0, Lvua;->r:Landroid/app/PendingIntent;

    iput-object p4, p0, Lvua;->s:Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p0, p2}, Lmwa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Lvua;->s:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v1

    iget-object p0, p0, Lvua;->r:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/location/zzec;->zzu(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
