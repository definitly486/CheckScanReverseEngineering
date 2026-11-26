.class public final enum Lk9c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lk9c;

.field public static final enum zzb:Lk9c;

.field public static final enum zzc:Lk9c;

.field public static final enum zzd:Lk9c;

.field private static final synthetic zze:[Lk9c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk9c;

    const-string v1, "CONSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk9c;->zza:Lk9c;

    new-instance v1, Lk9c;

    const-string v2, "LEGITIMATE_INTEREST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk9c;->zzb:Lk9c;

    new-instance v2, Lk9c;

    const-string v3, "FLEXIBLE_CONSENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk9c;->zzc:Lk9c;

    new-instance v3, Lk9c;

    const-string v4, "FLEXIBLE_LEGITIMATE_INTEREST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk9c;->zzd:Lk9c;

    filled-new-array {v0, v1, v2, v3}, [Lk9c;

    move-result-object v0

    sput-object v0, Lk9c;->zze:[Lk9c;

    return-void
.end method

.method public static values()[Lk9c;
    .locals 1

    sget-object v0, Lk9c;->zze:[Lk9c;

    invoke-virtual {v0}, [Lk9c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk9c;

    return-object v0
.end method
