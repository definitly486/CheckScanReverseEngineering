.class public final enum Lsq0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsq0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsq0;

.field public static final enum CATEGORIES:Lsq0;

.field public static final enum CATEGORY_FLOW:Lsq0;

.field public static final enum COUPON:Lsq0;

.field public static final enum COUPON_SEARCH:Lsq0;

.field public static final enum FAVORITE_PREVIEWS:Lsq0;

.field public static final enum HOW_GET_CASHBACK_SLIDES:Lsq0;

.field public static final enum NOT_IMPLEMENTED:Lsq0;

.field public static final enum ONLINE_SHOP:Lsq0;

.field public static final enum SELECTION_FLOW:Lsq0;

.field public static final enum SPECIALS:Lsq0;

.field public static final enum TOP_FLOW:Lsq0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lsq0;

    const-string v1, "CATEGORY_FLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsq0;->CATEGORY_FLOW:Lsq0;

    new-instance v1, Lsq0;

    const-string v2, "SELECTION_FLOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsq0;->SELECTION_FLOW:Lsq0;

    new-instance v2, Lsq0;

    const-string v3, "ONLINE_SHOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsq0;->ONLINE_SHOP:Lsq0;

    new-instance v3, Lsq0;

    const-string v4, "SPECIALS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsq0;->SPECIALS:Lsq0;

    new-instance v4, Lsq0;

    const-string v5, "CATEGORIES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lsq0;->CATEGORIES:Lsq0;

    new-instance v5, Lsq0;

    const-string v6, "COUPON"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsq0;->COUPON:Lsq0;

    new-instance v6, Lsq0;

    const-string v7, "TOP_FLOW"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lsq0;->TOP_FLOW:Lsq0;

    new-instance v7, Lsq0;

    const-string v8, "COUPON_SEARCH"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsq0;->COUPON_SEARCH:Lsq0;

    new-instance v8, Lsq0;

    const-string v9, "FAVORITE_PREVIEWS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lsq0;->FAVORITE_PREVIEWS:Lsq0;

    new-instance v9, Lsq0;

    const-string v10, "HOW_GET_CASHBACK_SLIDES"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lsq0;->HOW_GET_CASHBACK_SLIDES:Lsq0;

    new-instance v10, Lsq0;

    const-string v11, "NOT_IMPLEMENTED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lsq0;->NOT_IMPLEMENTED:Lsq0;

    filled-new-array/range {v0 .. v10}, [Lsq0;

    move-result-object v0

    sput-object v0, Lsq0;->$VALUES:[Lsq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsq0;
    .locals 1

    const-class v0, Lsq0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsq0;

    return-object p0
.end method

.method public static values()[Lsq0;
    .locals 1

    sget-object v0, Lsq0;->$VALUES:[Lsq0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsq0;

    return-object v0
.end method
