.class public Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/signatureverification/zzd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/signatureverification/zzd;->a:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/signatureverification/zzb;

    invoke-direct {v1}, Lcom/google/android/gms/common/signatureverification/zzb;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/common/signatureverification/zzd;->zza(Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/common/signatureverification/zzd;->a:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sput-object v1, Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfigurationProvider;->a:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfigurationProvider;->a:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    return-object v0
.end method
