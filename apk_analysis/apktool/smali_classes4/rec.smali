.class public final synthetic Lrec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrec;->b:Lcom/google/android/gms/measurement/internal/zzic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lrec;->b:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Ljvb;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzj()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v0

    invoke-virtual {v0}, Lmdb;->zzg()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lzwb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltva;->c()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzj()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lmfc;

    invoke-direct {v1, p0}, Lmfc;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    const-string v0, "registerTrigger called but app not eligible"

    invoke-static {p0, v0}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void
.end method
