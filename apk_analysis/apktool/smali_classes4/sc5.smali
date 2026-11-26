.class public final enum Lsc5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsc5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASE:Lsc5;

.field public static final enum CUSTOM:Lsc5;

.field public static final enum DIGITAL_INK:Lsc5;

.field public static final enum DIGITAL_INK_SEGMENTATION:Lsc5;

.field public static final enum ENTITY_EXTRACTION:Lsc5;

.field public static final enum IMAGE_CAPTIONING:Lsc5;

.field public static final enum TOXICITY_DETECTION:Lsc5;

.field public static final enum TRANSLATE:Lsc5;

.field public static final enum UNKNOWN:Lsc5;

.field private static final synthetic zza:[Lsc5;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lsc5;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsc5;->UNKNOWN:Lsc5;

    new-instance v1, Lsc5;

    const-string v2, "BASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsc5;->BASE:Lsc5;

    new-instance v2, Lsc5;

    const-string v3, "TRANSLATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsc5;->TRANSLATE:Lsc5;

    new-instance v3, Lsc5;

    const-string v4, "ENTITY_EXTRACTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsc5;->ENTITY_EXTRACTION:Lsc5;

    new-instance v4, Lsc5;

    const-string v5, "CUSTOM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lsc5;->CUSTOM:Lsc5;

    new-instance v5, Lsc5;

    const-string v6, "DIGITAL_INK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsc5;->DIGITAL_INK:Lsc5;

    new-instance v6, Lsc5;

    const-string v7, "DIGITAL_INK_SEGMENTATION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lsc5;->DIGITAL_INK_SEGMENTATION:Lsc5;

    new-instance v7, Lsc5;

    const-string v8, "TOXICITY_DETECTION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsc5;->TOXICITY_DETECTION:Lsc5;

    new-instance v8, Lsc5;

    const-string v9, "IMAGE_CAPTIONING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lsc5;->IMAGE_CAPTIONING:Lsc5;

    filled-new-array/range {v0 .. v8}, [Lsc5;

    move-result-object v0

    sput-object v0, Lsc5;->zza:[Lsc5;

    return-void
.end method

.method public static values()[Lsc5;
    .locals 1

    sget-object v0, Lsc5;->zza:[Lsc5;

    invoke-virtual {v0}, [Lsc5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsc5;

    return-object v0
.end method
