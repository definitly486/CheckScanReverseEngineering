.class public final Lfc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpq5;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lubc;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lez4$h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "object"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lfc3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lfc3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfc3;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object p0, p0, Lfc3;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzel;->zzb(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/location/zzel;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/location/zzec;->zzF(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    iget-object p0, p0, Lfc3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v0, "auto"

    const-string v1, "_err"

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, v1, p3, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzH(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzlj;->zzA(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
