.class public final Lf15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf15;->b:I

    iput-object p2, p0, Lf15;->c:Ljava/lang/Object;

    iput-object p3, p0, Lf15;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lf15;->b:I

    iget-object v1, p0, Lf15;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf15;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    sget-object v0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    check-cast p0, Landroid/app/PendingIntent;

    check-cast v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzec;->zzu(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/auth-api/zbat;

    check-cast v1, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbau;

    new-instance v0, Lana;

    invoke-direct {v0, p0, p2}, Lana;-><init>(Lcom/google/android/gms/internal/auth-api/zbat;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/auth-api/zbv;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zbba;->zba(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zbat;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbv;->zbf(Lcom/google/android/gms/internal/auth-api/zbo;Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;Ljava/lang/String;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
