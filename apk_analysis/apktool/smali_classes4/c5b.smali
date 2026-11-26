.class public final Lc5b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzdd;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lc5b;->f:Lcom/google/android/gms/internal/measurement/zzdd;

    iput-object p3, p0, Lc5b;->g:Ljava/lang/String;

    iput-object p4, p0, Lc5b;->h:Ljava/lang/String;

    iput-object p1, p0, Lc5b;->i:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lc5b;->i:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v2, p0, Lc5b;->f:Lcom/google/android/gms/internal/measurement/zzdd;

    iget-object v3, p0, Lc5b;->g:Ljava/lang/String;

    iget-object v4, p0, Lc5b;->h:Ljava/lang/String;

    iget-wide v5, p0, Lcbb;->b:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzcp;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
