.class public Lcom/google/android/gms/common/PackageVerificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/PackageVerificationResult;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/PackageVerificationResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/PackageVerificationResult;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/common/signatureverification/zza;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 0

    new-instance p0, Lcom/google/android/gms/common/PackageVerificationResult;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/common/PackageVerificationResult;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static zzd(Ljava/lang/String;ILcom/google/android/gms/common/signatureverification/zza;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 0

    new-instance p0, Lcom/google/android/gms/common/PackageVerificationResult;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/common/PackageVerificationResult;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public final zzb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->a:Z

    return p0
.end method

.method public final zzc()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->a:Z

    if-nez v0, :cond_1

    const-string v0, "PackageVerificationRslt: "

    iget-object v1, p0, Lcom/google/android/gms/common/PackageVerificationResult;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->c:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
