.class public final Lgrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgrb;->b:Ljava/lang/String;

    iput-object p3, p0, Lgrb;->c:Ljava/lang/String;

    iput-object p4, p0, Lgrb;->d:Ljava/lang/String;

    iput-wide p5, p0, Lgrb;->e:J

    iput-object p1, p0, Lgrb;->f:Lcom/google/android/gms/measurement/internal/zzjd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lgrb;->f:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    iget-object v1, p0, Lgrb;->c:Ljava/lang/String;

    iget-object v2, p0, Lgrb;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzau(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlu;)V

    return-void

    :cond_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlu;

    iget-object v4, p0, Lgrb;->d:Ljava/lang/String;

    iget-wide v5, p0, Lgrb;->e:J

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzau(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlu;)V

    return-void
.end method
