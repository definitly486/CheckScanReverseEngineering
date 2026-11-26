.class public final Lbbb;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/Long;

.field public final synthetic g:Ljava/lang/Long;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p2, p0, Lbbb;->f:Ljava/lang/Long;

    iput-object p3, p0, Lbbb;->g:Ljava/lang/Long;

    iput-object p4, p0, Lbbb;->h:Ljava/lang/String;

    iput-object p5, p0, Lbbb;->i:Ljava/lang/String;

    iput-object p6, p0, Lbbb;->j:Landroid/os/Bundle;

    iput-boolean p7, p0, Lbbb;->k:Z

    iput-boolean p8, p0, Lbbb;->l:Z

    iput-object p1, p0, Lbbb;->m:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lbbb;->f:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcbb;->b:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lbbb;->g:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcbb;->c:J

    :goto_2
    move-wide v10, v0

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lbbb;->m:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v3, p0, Lbbb;->h:Ljava/lang/String;

    iget-object v4, p0, Lbbb;->i:Ljava/lang/String;

    iget-object v5, p0, Lbbb;->j:Landroid/os/Bundle;

    iget-boolean v6, p0, Lbbb;->k:Z

    iget-boolean v7, p0, Lbbb;->l:Z

    invoke-interface/range {v2 .. v11}, Lcom/google/android/gms/internal/measurement/zzcp;->logEventWithElapsedTime(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V

    return-void
.end method
