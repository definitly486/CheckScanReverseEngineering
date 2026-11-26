.class public final synthetic Lzec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lzec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".bak"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->e:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzd(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object p0, Lu24;->c:Lu24;

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Len3;->W(Ljava/lang/Exception;)Lu24$b;

    move-result-object p0

    return-object p0
.end method
