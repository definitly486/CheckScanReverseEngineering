.class public final Lcom/google/android/gms/internal/auth-api-phone/zzan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v5, "sms_code_browser"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v1, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zzb:Lcom/google/android/gms/common/Feature;

    move-wide v5, v2

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "sms_retrieve"

    const-wide/16 v7, 0x1

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v2, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v9, "user_consent"

    const-wide/16 v10, 0x3

    invoke-direct {v3, v9, v10, v11, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v3, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zzd:Lcom/google/android/gms/common/Feature;

    move v9, v4

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v10, "missed_call_retriever"

    invoke-direct {v4, v10, v5, v6, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v4, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "missed_call_retriever_user_consent"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v5, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zzf:Lcom/google/android/gms/common/Feature;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/common/Feature;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzan;->zzg:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
