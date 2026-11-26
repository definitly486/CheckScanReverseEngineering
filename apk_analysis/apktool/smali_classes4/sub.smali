.class public final Lsub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzcs;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzbh;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcs;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsub;->b:Lcom/google/android/gms/internal/measurement/zzcs;

    iput-object p3, p0, Lsub;->c:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p4, p0, Lsub;->d:Ljava/lang/String;

    iput-object p1, p0, Lsub;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsub;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    iget-object v1, p0, Lsub;->c:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v2, p0, Lsub;->d:Ljava/lang/String;

    iget-object p0, p0, Lsub;->b:Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzN(Lcom/google/android/gms/internal/measurement/zzcs;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    return-void
.end method
