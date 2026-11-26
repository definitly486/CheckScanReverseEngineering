.class public final enum Lu57;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu57;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu57;

.field public static final enum BYTE_SEGMENTS:Lu57;

.field public static final enum ERROR_CORRECTION_LEVEL:Lu57;

.field public static final enum ISSUE_NUMBER:Lu57;

.field public static final enum ORIENTATION:Lu57;

.field public static final enum OTHER:Lu57;

.field public static final enum PDF417_EXTRA_METADATA:Lu57;

.field public static final enum POSSIBLE_COUNTRY:Lu57;

.field public static final enum STRUCTURED_APPEND_PARITY:Lu57;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lu57;

.field public static final enum SUGGESTED_PRICE:Lu57;

.field public static final enum UPC_EAN_EXTENSION:Lu57;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lu57;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu57;->OTHER:Lu57;

    new-instance v1, Lu57;

    const-string v2, "ORIENTATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu57;->ORIENTATION:Lu57;

    new-instance v2, Lu57;

    const-string v3, "BYTE_SEGMENTS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu57;->BYTE_SEGMENTS:Lu57;

    new-instance v3, Lu57;

    const-string v4, "ERROR_CORRECTION_LEVEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu57;->ERROR_CORRECTION_LEVEL:Lu57;

    new-instance v4, Lu57;

    const-string v5, "ISSUE_NUMBER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lu57;->ISSUE_NUMBER:Lu57;

    new-instance v5, Lu57;

    const-string v6, "SUGGESTED_PRICE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lu57;->SUGGESTED_PRICE:Lu57;

    new-instance v6, Lu57;

    const-string v7, "POSSIBLE_COUNTRY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lu57;->POSSIBLE_COUNTRY:Lu57;

    new-instance v7, Lu57;

    const-string v8, "UPC_EAN_EXTENSION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lu57;->UPC_EAN_EXTENSION:Lu57;

    new-instance v8, Lu57;

    const-string v9, "PDF417_EXTRA_METADATA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lu57;->PDF417_EXTRA_METADATA:Lu57;

    new-instance v9, Lu57;

    const-string v10, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lu57;->STRUCTURED_APPEND_SEQUENCE:Lu57;

    new-instance v10, Lu57;

    const-string v11, "STRUCTURED_APPEND_PARITY"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lu57;->STRUCTURED_APPEND_PARITY:Lu57;

    filled-new-array/range {v0 .. v10}, [Lu57;

    move-result-object v0

    sput-object v0, Lu57;->$VALUES:[Lu57;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu57;
    .locals 1

    const-class v0, Lu57;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu57;

    return-object p0
.end method

.method public static values()[Lu57;
    .locals 1

    sget-object v0, Lu57;->$VALUES:[Lu57;

    invoke-virtual {v0}, [Lu57;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu57;

    return-object v0
.end method
