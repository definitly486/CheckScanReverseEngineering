.class public final synthetic Ly7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zznt;

.field public final synthetic c:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zznt;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7c;->b:Lcom/google/android/gms/measurement/internal/zznt;

    iput-object p2, p0, Ly7c;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    const-string v0, "FA"

    const-string v1, "[sgtm] AppMeasurementJobService processed last Scion upload request."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ly7c;->b:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznt;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznp;

    const/4 v1, 0x0

    iget-object p0, p0, Ly7c;->c:Landroid/app/job/JobParameters;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zznp;->zzb(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
