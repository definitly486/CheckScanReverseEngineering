.class public abstract Lcom/google/android/gms/internal/play_billing/zzfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzfa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzez<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzhr;"
    }
.end annotation


# instance fields
.field protected transient zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:I

    return-void
.end method


# virtual methods
.method public a(Lkqb;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzQ()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Lngb;

    invoke-direct {v2, v1, v0}, Lngb;-><init>([BI)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Serializing "

    const-string v2, " to a byte array threw an IOException (should never happen)."

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/play_billing/zzfp;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    new-array v1, v0, [B

    new-instance v2, Lngb;

    invoke-direct {v2, v1, v0}, Lngb;-><init>([BI)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzA()V

    new-instance v0, Lqfb;

    invoke-direct {v0, v1}, Lqfb;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Serializing "

    const-string v2, " to a ByteString threw an IOException (should never happen)."

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
