.class public final enum Ltf6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltf6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltf6;

.field public static final enum Admitad:Ltf6;

.field public static final enum BonusProgram:Ltf6;

.field public static final enum Coupon:Ltf6;

.field public static final enum Discount:Ltf6;

.field public static final enum DiscountShop:Ltf6;

.field public static final enum Partner:Ltf6;

.field public static final enum ProductInCheque:Ltf6;

.field public static final enum Redmond:Ltf6;

.field public static final enum Unknown:Ltf6;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ltf6;

    const-string v1, "Admitad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltf6;->Admitad:Ltf6;

    new-instance v1, Ltf6;

    const-string v2, "BonusProgram"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltf6;->BonusProgram:Ltf6;

    new-instance v2, Ltf6;

    const-string v3, "Coupon"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ltf6;->Coupon:Ltf6;

    new-instance v3, Ltf6;

    const-string v4, "Discount"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltf6;->Discount:Ltf6;

    new-instance v4, Ltf6;

    const-string v5, "DiscountShop"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ltf6;->DiscountShop:Ltf6;

    new-instance v5, Ltf6;

    const-string v6, "ProductInCheque"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltf6;->ProductInCheque:Ltf6;

    new-instance v6, Ltf6;

    const-string v7, "Partner"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ltf6;->Partner:Ltf6;

    new-instance v7, Ltf6;

    const-string v8, "Redmond"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltf6;->Redmond:Ltf6;

    new-instance v8, Ltf6;

    const-string v9, "Unknown"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ltf6;->Unknown:Ltf6;

    filled-new-array/range {v0 .. v8}, [Ltf6;

    move-result-object v0

    sput-object v0, Ltf6;->$VALUES:[Ltf6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ltf6;
    .locals 1

    const-class v0, Ltf6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltf6;

    return-object p0
.end method

.method public static values()[Ltf6;
    .locals 1

    sget-object v0, Ltf6;->$VALUES:[Ltf6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf6;

    return-object v0
.end method
