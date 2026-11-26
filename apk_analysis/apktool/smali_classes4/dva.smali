.class public final Ldva;
.super Lmwa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Ldva;->r:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lmwa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Ldva;->r:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/location/zzec;->zzx(Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    return-void
.end method
