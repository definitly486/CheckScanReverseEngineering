.class public final synthetic Lmac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzpg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmac;->a:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()I

    move-result p1

    const/16 v0, 0x733d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7361

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7362

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7363

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7364

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7365

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7366

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7367

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7368

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lmac;->a:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpg;->b()V

    :cond_1
    sget-object p0, Lu24;->c:Lu24;

    return-object p0
.end method
