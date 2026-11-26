.class public final enum Lzh6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzh6$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzh6$a;

.field public static final enum Cashback:Lzh6$a;
    .annotation runtime Lbq7;
        value = "Cashback"
    .end annotation
.end field

.field public static final enum FullTerms:Lzh6$a;
    .annotation runtime Lbq7;
        value = "FullTerms"
    .end annotation
.end field

.field public static final enum LoyaltyProgram:Lzh6$a;
    .annotation runtime Lbq7;
        value = "LoyaltyProgram"
    .end annotation
.end field

.field public static final enum MerchantsList:Lzh6$a;
    .annotation runtime Lbq7;
        value = "MerchantsList"
    .end annotation
.end field

.field public static final enum NotSupported:Lzh6$a;

.field public static final enum OfferConditionsList:Lzh6$a;
    .annotation runtime Lbq7;
        value = "OfferConditionsList"
    .end annotation
.end field

.field public static final enum OfferHeader:Lzh6$a;
    .annotation runtime Lbq7;
        value = "OfferHeader"
    .end annotation
.end field

.field public static final enum TextBlock:Lzh6$a;
    .annotation runtime Lbq7;
        value = "TextBlock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lzh6$a;

    const-string v1, "OfferHeader"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzh6$a;->OfferHeader:Lzh6$a;

    new-instance v1, Lzh6$a;

    const-string v2, "LoyaltyProgram"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzh6$a;->LoyaltyProgram:Lzh6$a;

    new-instance v2, Lzh6$a;

    const-string v3, "Cashback"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lzh6$a;->Cashback:Lzh6$a;

    new-instance v3, Lzh6$a;

    const-string v4, "MerchantsList"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzh6$a;->MerchantsList:Lzh6$a;

    new-instance v4, Lzh6$a;

    const-string v5, "OfferConditionsList"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lzh6$a;->OfferConditionsList:Lzh6$a;

    new-instance v5, Lzh6$a;

    const-string v6, "TextBlock"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzh6$a;->TextBlock:Lzh6$a;

    new-instance v6, Lzh6$a;

    const-string v7, "FullTerms"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lzh6$a;->FullTerms:Lzh6$a;

    new-instance v7, Lzh6$a;

    const-string v8, "NotSupported"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lzh6$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzh6$a;->NotSupported:Lzh6$a;

    filled-new-array/range {v0 .. v7}, [Lzh6$a;

    move-result-object v0

    sput-object v0, Lzh6$a;->$VALUES:[Lzh6$a;

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

.method public static valueOf(Ljava/lang/String;)Lzh6$a;
    .locals 1

    const-class v0, Lzh6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzh6$a;

    return-object p0
.end method

.method public static values()[Lzh6$a;
    .locals 1

    sget-object v0, Lzh6$a;->$VALUES:[Lzh6$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzh6$a;

    return-object v0
.end method
