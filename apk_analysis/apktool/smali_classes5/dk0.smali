.class public final enum Ldk0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldk0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldk0;

.field public static final enum CARD_BUTTON:Ldk0;
    .annotation runtime Lbq7;
        value = "CARD_BUTTON"
    .end annotation
.end field

.field public static final enum Description:Ldk0;
    .annotation runtime Lbq7;
        value = "DESCRIPTION"
    .end annotation
.end field

.field public static final enum EXPIRED:Ldk0;
    .annotation runtime Lbq7;
        value = "EXPIRED"
    .end annotation
.end field

.field public static final enum HotItems:Ldk0;
    .annotation runtime Lbq7;
        value = "HOT_ITEMS"
    .end annotation
.end field

.field public static final enum OnlineShopInfo:Ldk0;
    .annotation runtime Lbq7;
        value = "ONLINE_SHOP_INFO"
    .end annotation
.end field

.field public static final enum Promocodes:Ldk0;
    .annotation runtime Lbq7;
        value = "PROMOCODES"
    .end annotation
.end field

.field public static final enum StepsInfo:Ldk0;
    .annotation runtime Lbq7;
        value = "STEPS_INFO"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ldk0;

    const-string v1, "OnlineShopInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldk0;->OnlineShopInfo:Ldk0;

    new-instance v1, Ldk0;

    const-string v2, "StepsInfo"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldk0;->StepsInfo:Ldk0;

    new-instance v2, Ldk0;

    const-string v3, "Promocodes"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldk0;->Promocodes:Ldk0;

    new-instance v3, Ldk0;

    const-string v4, "HotItems"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldk0;->HotItems:Ldk0;

    new-instance v4, Ldk0;

    const-string v5, "Description"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ldk0;->Description:Ldk0;

    new-instance v5, Ldk0;

    const-string v6, "EXPIRED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldk0;->EXPIRED:Ldk0;

    new-instance v6, Ldk0;

    const-string v7, "CARD_BUTTON"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ldk0;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ldk0;->CARD_BUTTON:Ldk0;

    filled-new-array/range {v0 .. v6}, [Ldk0;

    move-result-object v0

    sput-object v0, Ldk0;->$VALUES:[Ldk0;

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

.method public static valueOf(Ljava/lang/String;)Ldk0;
    .locals 1

    const-class v0, Ldk0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldk0;

    return-object p0
.end method

.method public static values()[Ldk0;
    .locals 1

    sget-object v0, Ldk0;->$VALUES:[Ldk0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldk0;

    return-object v0
.end method
