.class public final synthetic Lvxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V
    .locals 0

    iput p3, p0, Lvxa;->b:I

    iput-object p1, p0, Lvxa;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvxa;->d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lvxa;->b:I

    iget-object v1, p0, Lvxa;->d:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    iget-object p0, p0, Lvxa;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/internal/cloudmessaging/zzm;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    new-instance v0, Lbqb;

    invoke-direct {v0, p0, p2}, Lbqb;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p2, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    check-cast v1, Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cloudmessaging/RegisterRequest;->zza(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cloudmessaging/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cloudmessaging/zzq;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiMetadata;->toBuilder()Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->setCallbackSupportEnabled(Z)Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->build()Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zzc(Lcom/google/android/gms/internal/cloudmessaging/zzg;Lcom/google/android/gms/cloudmessaging/RegisterRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void

    :pswitch_0
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    sget-object v0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    check-cast p0, Ld0b;

    check-cast v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzec;->zzt(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
