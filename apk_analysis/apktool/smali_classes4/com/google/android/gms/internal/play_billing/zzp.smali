.class public final Lcom/google/android/gms/internal/play_billing/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lzdc;

.field public c:Lcom/google/android/gms/internal/play_billing/zzv;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzv;->zze()Lcom/google/android/gms/internal/play_billing/zzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->c:Lcom/google/android/gms/internal/play_billing/zzv;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->b:Lzdc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzdc;->c:Lpdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lccc;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v3, Lohb;

    invoke-direct {v3, v2}, Lohb;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzo;->g:Ly14;

    invoke-virtual {v2, v0, v1, v3}, Ly14;->S(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->b(Lcom/google/android/gms/internal/play_billing/zzo;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->d:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->c:Lcom/google/android/gms/internal/play_billing/zzv;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzv;->zzd(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->b:Lzdc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lzdc;->c:Lpdc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzo;->h:Ljava/lang/Object;

    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzo;->g:Ly14;

    invoke-virtual {v4, v1, v3, p1}, Ly14;->S(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzo;->b(Lcom/google/android/gms/internal/play_billing/zzo;)V

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzp;->b:Lzdc;

    iput-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzp;->c:Lcom/google/android/gms/internal/play_billing/zzv;

    :cond_2
    return v0
.end method
