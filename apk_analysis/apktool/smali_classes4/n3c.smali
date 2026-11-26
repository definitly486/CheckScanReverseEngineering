.class public final Ln3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln3c;->b:I

    iput-object p1, p0, Ln3c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Ln3c;->b:I

    iget-object p0, p0, Ln3c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lscc;

    move-result-object v0

    iget-object v1, v0, Lscc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzrf;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzqn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzqn;->zze()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Li13;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzqn;->zzd()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object p0, Lu24;->c:Lu24;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzme;->zzb()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    iget-object v0, v0, Lscc;->e:Lrcc;

    iget v5, v0, Lrcc;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmd;->zza()Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzmc;->zza(I)Lcom/google/android/gms/internal/measurement/zzmc;

    iget v0, v0, Lrcc;->b:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzmc;->zzb(I)Lcom/google/android/gms/internal/measurement/zzmc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb(Lcom/google/android/gms/internal/measurement/zzmd;)Lcom/google/android/gms/internal/measurement/zzmb;

    invoke-static {v1}, Li13;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmb;

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzqn;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmb;

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Li13;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lu24;->c:Lu24;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    new-instance v1, Lmac;

    invoke-direct {v1, p0}, Lmac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object p0

    sget v2, Lp;->m:I

    new-instance v2, Lp$a;

    const-class v3, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-direct {v2, v0, v3, v1}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmb;->j:Lcom/google/android/gms/measurement/internal/zzlu;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmb;->e:Lcom/google/android/gms/measurement/internal/zzlu;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
