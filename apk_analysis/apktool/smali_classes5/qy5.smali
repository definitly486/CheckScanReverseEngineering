.class public final enum Lqy5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqy5;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqy5;

.field public static final enum CARD_OPERATION:Lqy5;
    .annotation runtime Lbq7;
        value = "CARD_OPERATION"
    .end annotation
.end field

.field public static final enum CHECKSCAN_BONUS:Lqy5;
    .annotation runtime Lbq7;
        value = "CHECKSCAN_BONUS"
    .end annotation
.end field

.field public static final enum CHECKSCAN_CASHBACK:Lqy5;
    .annotation runtime Lbq7;
        value = "CHECKSCAN_CASHBACK"
    .end annotation
.end field

.field public static final enum FRIEND_CASHBACK:Lqy5;
    .annotation runtime Lbq7;
        value = "FRIEND_CASHBACK"
    .end annotation
.end field

.field public static final enum LIMIT_CHANGE:Lqy5;
    .annotation runtime Lbq7;
        value = "LIMIT_CHANGE"
    .end annotation
.end field

.field public static final enum LOYALTY_PROGRAM:Lqy5;
    .annotation runtime Lbq7;
        value = "LOYALTY_PROGRAM"
    .end annotation
.end field

.field public static final enum PARTNER_BONUS:Lqy5;
    .annotation runtime Lbq7;
        value = "PARTNER_BONUS"
    .end annotation
.end field

.field public static final enum POWERCODE_CASHBACK:Lqy5;
    .annotation runtime Lbq7;
        value = "POWERCODE_CASHBACK"
    .end annotation
.end field

.field public static final enum POWERCODE_HOT_CASHBACK:Lqy5;
    .annotation runtime Lbq7;
        value = "POWERCODE_HOT_CASHBACK"
    .end annotation
.end field

.field public static final enum PURCHASE_CASHBACK:Lqy5;
    .annotation runtime Lbq7;
        value = "PURCHASE_CASHBACK"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lqy5;
    .annotation runtime Lbq7;
        value = "UNKNOWN"
    .end annotation
.end field

.field public static final enum WITHDRAWAL:Lqy5;
    .annotation runtime Lbq7;
        value = "WITHDRAWAL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lqy5;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqy5;->UNKNOWN:Lqy5;

    new-instance v1, Lqy5;

    const-string v2, "CHECKSCAN_CASHBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqy5;->CHECKSCAN_CASHBACK:Lqy5;

    new-instance v2, Lqy5;

    const-string v3, "FRIEND_CASHBACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lqy5;->FRIEND_CASHBACK:Lqy5;

    new-instance v3, Lqy5;

    const-string v4, "CHECKSCAN_BONUS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lqy5;->CHECKSCAN_BONUS:Lqy5;

    new-instance v4, Lqy5;

    const-string v5, "WITHDRAWAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lqy5;->WITHDRAWAL:Lqy5;

    new-instance v5, Lqy5;

    const-string v6, "PURCHASE_CASHBACK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lqy5;->PURCHASE_CASHBACK:Lqy5;

    new-instance v6, Lqy5;

    const-string v7, "PARTNER_BONUS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lqy5;->PARTNER_BONUS:Lqy5;

    new-instance v7, Lqy5;

    const-string v8, "LOYALTY_PROGRAM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lqy5;->LOYALTY_PROGRAM:Lqy5;

    new-instance v8, Lqy5;

    const-string v9, "LIMIT_CHANGE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lqy5;->LIMIT_CHANGE:Lqy5;

    new-instance v9, Lqy5;

    const-string v10, "CARD_OPERATION"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lqy5;->CARD_OPERATION:Lqy5;

    new-instance v10, Lqy5;

    const-string v11, "POWERCODE_CASHBACK"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lqy5;->POWERCODE_CASHBACK:Lqy5;

    new-instance v11, Lqy5;

    const-string v12, "POWERCODE_HOT_CASHBACK"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lqy5;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lqy5;->POWERCODE_HOT_CASHBACK:Lqy5;

    filled-new-array/range {v0 .. v11}, [Lqy5;

    move-result-object v0

    sput-object v0, Lqy5;->$VALUES:[Lqy5;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqy5;
    .locals 1

    const-class v0, Lqy5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqy5;

    return-object p0
.end method

.method public static values()[Lqy5;
    .locals 1

    sget-object v0, Lqy5;->$VALUES:[Lqy5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqy5;

    return-object v0
.end method
