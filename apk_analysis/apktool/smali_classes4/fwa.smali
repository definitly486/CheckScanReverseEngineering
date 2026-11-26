.class public final enum Lfwa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lfwa;

.field public static final enum zzb:Lfwa;

.field public static final enum zzc:Lfwa;

.field public static final enum zzd:Lfwa;

.field public static final enum zze:Lfwa;

.field public static final enum zzf:Lfwa;

.field public static final enum zzg:Lfwa;

.field public static final enum zzh:Lfwa;

.field public static final enum zzi:Lfwa;

.field public static final enum zzj:Lfwa;

.field public static final enum zzk:Lfwa;

.field public static final enum zzl:Lfwa;

.field public static final enum zzm:Lfwa;

.field public static final enum zzn:Lfwa;

.field public static final enum zzo:Lfwa;

.field private static final zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

.field private static final synthetic zzq:[Lfwa;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lfwa;

    const/16 v1, -0x3e7

    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    const/4 v15, 0x0

    invoke-direct {v0, v2, v15, v1}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfwa;->zza:Lfwa;

    new-instance v1, Lfwa;

    const/4 v2, -0x3

    const-string v3, "SERVICE_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfwa;->zzb:Lfwa;

    new-instance v2, Lfwa;

    const/4 v3, -0x2

    const-string v5, "FEATURE_NOT_SUPPORTED"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lfwa;->zzc:Lfwa;

    new-instance v3, Lfwa;

    const/4 v5, -0x1

    const-string v7, "SERVICE_DISCONNECTED"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfwa;->zzd:Lfwa;

    new-instance v5, Lfwa;

    const-string v7, "OK"

    const/4 v9, 0x4

    invoke-direct {v5, v7, v9, v15}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfwa;->zze:Lfwa;

    move-object v7, v5

    new-instance v5, Lfwa;

    const-string v10, "USER_CANCELED"

    const/4 v11, 0x5

    invoke-direct {v5, v10, v11, v4}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfwa;->zzf:Lfwa;

    new-instance v4, Lfwa;

    const-string v10, "SERVICE_UNAVAILABLE"

    const/4 v12, 0x6

    invoke-direct {v4, v10, v12, v6}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lfwa;->zzg:Lfwa;

    move-object v6, v4

    move-object v4, v7

    new-instance v7, Lfwa;

    const-string v10, "BILLING_UNAVAILABLE"

    const/4 v13, 0x7

    invoke-direct {v7, v10, v13, v8}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lfwa;->zzh:Lfwa;

    new-instance v8, Lfwa;

    const-string v10, "ITEM_UNAVAILABLE"

    const/16 v14, 0x8

    invoke-direct {v8, v10, v14, v9}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lfwa;->zzi:Lfwa;

    new-instance v9, Lfwa;

    const-string v10, "DEVELOPER_ERROR"

    const/16 v15, 0x9

    invoke-direct {v9, v10, v15, v11}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lfwa;->zzj:Lfwa;

    new-instance v10, Lfwa;

    const-string v11, "ERROR"

    const/16 v15, 0xa

    invoke-direct {v10, v11, v15, v12}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lfwa;->zzk:Lfwa;

    new-instance v11, Lfwa;

    const-string v12, "ITEM_ALREADY_OWNED"

    const/16 v15, 0xb

    invoke-direct {v11, v12, v15, v13}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lfwa;->zzl:Lfwa;

    new-instance v12, Lfwa;

    const-string v13, "ITEM_NOT_OWNED"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v15, v14}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lfwa;->zzm:Lfwa;

    new-instance v13, Lfwa;

    const-string v14, "EXPIRED_OFFER_TOKEN"

    const/16 v15, 0xd

    move-object/from16 v17, v0

    const/16 v0, 0xb

    invoke-direct {v13, v14, v15, v0}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lfwa;->zzn:Lfwa;

    new-instance v14, Lfwa;

    const-string v0, "NETWORK_ERROR"

    const/16 v15, 0xe

    move-object/from16 v16, v1

    const/16 v1, 0xc

    invoke-direct {v14, v0, v15, v1}, Lfwa;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lfwa;->zzo:Lfwa;

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    filled-new-array/range {v0 .. v14}, [Lfwa;

    move-result-object v0

    sput-object v0, Lfwa;->zzq:[Lfwa;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcc;-><init>()V

    invoke-static {}, Lfwa;->values()[Lfwa;

    move-result-object v1

    array-length v2, v1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v2, :cond_0

    aget-object v3, v1, v15

    iget v4, v3, Lfwa;->zzr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/play_billing/zzcc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcc;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb()Lcom/google/android/gms/internal/play_billing/zzcd;

    move-result-object v0

    sput-object v0, Lfwa;->zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfwa;->zzr:I

    return-void
.end method

.method public static a(I)Lfwa;
    .locals 2

    sget-object v0, Lfwa;->zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcd;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lfwa;->zza:Lfwa;

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfwa;

    return-object p0
.end method

.method public static values()[Lfwa;
    .locals 1

    sget-object v0, Lfwa;->zzq:[Lfwa;

    invoke-virtual {v0}, [Lfwa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfwa;

    return-object v0
.end method
