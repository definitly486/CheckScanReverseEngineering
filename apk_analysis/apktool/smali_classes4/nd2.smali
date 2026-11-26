.class public final enum Lnd2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnd2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnd2;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lnd2;

.field public static final enum ALLOWED_LENGTHS:Lnd2;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lnd2;

.field public static final enum ASSUME_GS1:Lnd2;

.field public static final enum CHARACTER_SET:Lnd2;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lnd2;

.field public static final enum OTHER:Lnd2;

.field public static final enum POSSIBLE_FORMATS:Lnd2;

.field public static final enum PURE_BARCODE:Lnd2;

.field public static final enum RETURN_CODABAR_START_END:Lnd2;

.field public static final enum TRY_HARDER:Lnd2;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lnd2;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnd2;->OTHER:Lnd2;

    new-instance v1, Lnd2;

    const-string v2, "PURE_BARCODE"

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Void;

    invoke-direct {v1, v2, v3, v4}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lnd2;->PURE_BARCODE:Lnd2;

    new-instance v2, Lnd2;

    const/4 v3, 0x2

    const-class v5, Ljava/util/List;

    const-string v6, "POSSIBLE_FORMATS"

    invoke-direct {v2, v6, v3, v5}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lnd2;->POSSIBLE_FORMATS:Lnd2;

    new-instance v3, Lnd2;

    const-string v5, "TRY_HARDER"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lnd2;->TRY_HARDER:Lnd2;

    move-object v5, v4

    new-instance v4, Lnd2;

    const/4 v6, 0x4

    const-class v7, Ljava/lang/String;

    const-string v8, "CHARACTER_SET"

    invoke-direct {v4, v8, v6, v7}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lnd2;->CHARACTER_SET:Lnd2;

    move-object v6, v5

    new-instance v5, Lnd2;

    const-string v7, "ALLOWED_LENGTHS"

    const/4 v8, 0x5

    const-class v9, [I

    invoke-direct {v5, v7, v8, v9}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lnd2;->ALLOWED_LENGTHS:Lnd2;

    move-object v7, v6

    new-instance v6, Lnd2;

    const-string v8, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v10, 0x6

    invoke-direct {v6, v8, v10, v7}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lnd2;->ASSUME_CODE_39_CHECK_DIGIT:Lnd2;

    move-object v8, v7

    new-instance v7, Lnd2;

    const-string v10, "ASSUME_GS1"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lnd2;->ASSUME_GS1:Lnd2;

    move-object v10, v8

    new-instance v8, Lnd2;

    const-string v11, "RETURN_CODABAR_START_END"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v10}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lnd2;->RETURN_CODABAR_START_END:Lnd2;

    move-object v10, v9

    new-instance v9, Lnd2;

    const/16 v11, 0x9

    const-class v12, Lx57;

    const-string v13, "NEED_RESULT_POINT_CALLBACK"

    invoke-direct {v9, v13, v11, v12}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lnd2;->NEED_RESULT_POINT_CALLBACK:Lnd2;

    move-object v11, v10

    new-instance v10, Lnd2;

    const-string v12, "ALLOWED_EAN_EXTENSIONS"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lnd2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lnd2;->ALLOWED_EAN_EXTENSIONS:Lnd2;

    filled-new-array/range {v0 .. v10}, [Lnd2;

    move-result-object v0

    sput-object v0, Lnd2;->$VALUES:[Lnd2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnd2;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnd2;
    .locals 1

    const-class v0, Lnd2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnd2;

    return-object p0
.end method

.method public static values()[Lnd2;
    .locals 1

    sget-object v0, Lnd2;->$VALUES:[Lnd2;

    invoke-virtual {v0}, [Lnd2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnd2;

    return-object v0
.end method
