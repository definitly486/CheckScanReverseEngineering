.class public final Lpva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llgc;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lpva;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lpva;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltva;Lpvb;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lpva;->b:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpva;->c:Ljava/lang/Object;

    iput-object p1, p0, Lpva;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lpva;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lpva;->c:Ljava/lang/Object;

    check-cast v0, Llgc;

    :try_start_0
    iget-object p0, p0, Lpva;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Llgc;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Llgc;->c(Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v0, p0}, Llgc;->c(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lpva;->c:Ljava/lang/Object;

    check-cast v0, Lpvb;

    invoke-interface {v0}, Lpvb;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lpvb;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_0
    iget-object p0, p0, Lpva;->d:Ljava/lang/Object;

    check-cast p0, Ltva;

    iget-wide v0, p0, Ltva;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    iput-wide v2, p0, Ltva;->c:J

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ltva;->a()V

    :cond_2
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
