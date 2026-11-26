.class public final Lslb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzhr;

.field public final b:Lcom/google/android/gms/internal/play_billing/zzgc;

.field public volatile c:Lcom/google/android/gms/internal/play_billing/zzfp;

.field public volatile d:Lcom/google/android/gms/internal/play_billing/zzhr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lslb;->d:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzhs;->zzl()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p1

    iput-object p1, p0, Lslb;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    sget p1, Lydb;->a:I

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    iput-object p1, p0, Lslb;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    const/4 p1, 0x0

    iput-object p1, p0, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lslb;->d:Lcom/google/android/gms/internal/play_billing/zzhr;
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    iget-object p0, p0, Lslb;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lslb;

    if-eqz v1, :cond_3

    check-cast p1, Lslb;

    iget-object v1, p0, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lslb;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    iget-object v2, p1, Lslb;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    iget-object v2, p1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lslb;->a()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p0

    invoke-virtual {p1}, Lslb;->a()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lslb;->a()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lslb;->a()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lslb;->a()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
