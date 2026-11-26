.class public final enum Lu6c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lu6c;

.field public static final enum zzb:Lu6c;

.field public static final enum zzc:Lu6c;

.field private static final synthetic zzd:[Lu6c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu6c;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu6c;->zza:Lu6c;

    new-instance v1, Lu6c;

    const-string v2, "AUTH_INSTANTIATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu6c;->zzb:Lu6c;

    new-instance v2, Lu6c;

    const-string v3, "CALLER_INSTANTIATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu6c;->zzc:Lu6c;

    filled-new-array {v0, v1, v2}, [Lu6c;

    move-result-object v0

    sput-object v0, Lu6c;->zzd:[Lu6c;

    return-void
.end method

.method public static values()[Lu6c;
    .locals 1

    sget-object v0, Lu6c;->zzd:[Lu6c;

    invoke-virtual {v0}, [Lu6c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu6c;

    return-object v0
.end method
