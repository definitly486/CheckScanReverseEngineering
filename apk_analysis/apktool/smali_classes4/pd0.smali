.class public final enum Lpd0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpd0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENTITY_EXTRACTION:Lpd0;

.field public static final enum IMAGE_CAPTIONING:Lpd0;

.field public static final enum TOXICITY_DETECTION:Lpd0;

.field public static final enum TRANSLATE:Lpd0;

.field public static final enum zza:Lpd0;

.field public static final enum zzb:Lpd0;

.field private static final synthetic zzc:[Lpd0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lpd0;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpd0;->zza:Lpd0;

    new-instance v1, Lpd0;

    const-string v2, "SMART_REPLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpd0;->zzb:Lpd0;

    new-instance v2, Lpd0;

    const-string v3, "TRANSLATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lpd0;->TRANSLATE:Lpd0;

    new-instance v3, Lpd0;

    const-string v4, "ENTITY_EXTRACTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpd0;->ENTITY_EXTRACTION:Lpd0;

    new-instance v4, Lpd0;

    const-string v5, "TOXICITY_DETECTION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lpd0;->TOXICITY_DETECTION:Lpd0;

    new-instance v5, Lpd0;

    const-string v6, "IMAGE_CAPTIONING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lpd0;->IMAGE_CAPTIONING:Lpd0;

    filled-new-array/range {v0 .. v5}, [Lpd0;

    move-result-object v0

    sput-object v0, Lpd0;->zzc:[Lpd0;

    return-void
.end method

.method public static values()[Lpd0;
    .locals 1

    sget-object v0, Lpd0;->zzc:[Lpd0;

    invoke-virtual {v0}, [Lpd0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpd0;

    return-object v0
.end method
