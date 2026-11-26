.class public final synthetic Llzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzb;->b:Ljava/lang/String;

    iput-object p2, p0, Llzb;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzku;

    sget v0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:I

    new-instance v2, Lpzb;

    invoke-direct {v2, p2}, Lpzb;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkt;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Llzb;->b:Ljava/lang/String;

    iget-object v5, p0, Llzb;->c:[Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;I[Ljava/lang/String;[B)V

    return-void
.end method
