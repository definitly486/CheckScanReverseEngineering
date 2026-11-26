.class public final Lcom/google/android/gms/internal/auth-api-phone/zzt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final b:Lcom/google/android/gms/internal/auth-api-phone/zzs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzt;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth-api-phone/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzt;->b:Lcom/google/android/gms/internal/auth-api-phone/zzs;

    return-void
.end method

.method public static final synthetic zza()Lcom/google/android/gms/common/api/Api$ClientKey;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzt;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    return-object v0
.end method

.method public static final synthetic zzb()Lcom/google/android/gms/internal/auth-api-phone/zzs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzt;->b:Lcom/google/android/gms/internal/auth-api-phone/zzs;

    return-object v0
.end method
