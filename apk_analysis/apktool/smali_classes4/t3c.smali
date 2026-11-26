.class public final Lt3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzlu;

.field public final synthetic c:J

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzmb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmb;Lcom/google/android/gms/measurement/internal/zzlu;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt3c;->b:Lcom/google/android/gms/measurement/internal/zzlu;

    iput-wide p3, p0, Lt3c;->c:J

    iput-object p1, p0, Lt3c;->d:Lcom/google/android/gms/measurement/internal/zzmb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lt3c;->c:J

    const/4 v2, 0x0

    iget-object v3, p0, Lt3c;->d:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object p0, p0, Lt3c;->b:Lcom/google/android/gms/measurement/internal/zzlu;

    invoke-virtual {v3, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzmb;->e(Lcom/google/android/gms/measurement/internal/zzlu;ZJ)V

    const/4 p0, 0x0

    iput-object p0, v3, Lcom/google/android/gms/measurement/internal/zzmb;->e:Lcom/google/android/gms/measurement/internal/zzlu;

    iget-object v0, v3, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    invoke-virtual {v0}, Lmdb;->zzg()V

    invoke-virtual {v0}, Lqhb;->a()V

    new-instance v1, Ldyb;

    invoke-direct {v1, v0, p0}, Ldyb;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzlu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method
