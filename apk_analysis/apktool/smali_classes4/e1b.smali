.class public final Le1b;
.super Lp1b;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/location/GeofencingRequest;

.field public final synthetic s:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzcr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Le1b;->r:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p4, p0, Le1b;->s:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lp1b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Le1b;->s:Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzcr;->a(Lp1b;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v1

    iget-object p0, p0, Le1b;->r:Lcom/google/android/gms/location/GeofencingRequest;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/location/zzec;->zzE(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
