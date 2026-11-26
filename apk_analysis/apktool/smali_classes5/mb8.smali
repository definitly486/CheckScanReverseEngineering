.class public final enum Lmb8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmb8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmb8;

.field public static final enum AddToFavorite:Lmb8;
    .annotation runtime Lbq7;
        value = "ADD_TO_FAVORITE"
    .end annotation
.end field

.field public static final enum AddToFavourite:Lmb8;
    .annotation runtime Lbq7;
        value = "ADD_TO_FAVORITE"
    .end annotation
.end field

.field public static final enum AddToShoppingCart:Lmb8;
    .annotation runtime Lbq7;
        value = "ADD_TO_SHOPPING_CART"
    .end annotation
.end field

.field public static final enum Order:Lmb8;
    .annotation runtime Lbq7;
        value = "PRODUCT_ORDER"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmb8;

    const-string v1, "AddToFavourite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmb8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmb8;->AddToFavourite:Lmb8;

    new-instance v1, Lmb8;

    const-string v2, "Order"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmb8;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmb8;->Order:Lmb8;

    new-instance v2, Lmb8;

    const-string v3, "AddToShoppingCart"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lmb8;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lmb8;->AddToShoppingCart:Lmb8;

    new-instance v3, Lmb8;

    const-string v4, "AddToFavorite"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lmb8;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmb8;->AddToFavorite:Lmb8;

    filled-new-array {v0, v1, v2, v3}, [Lmb8;

    move-result-object v0

    sput-object v0, Lmb8;->$VALUES:[Lmb8;

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

.method public static valueOf(Ljava/lang/String;)Lmb8;
    .locals 1

    const-class v0, Lmb8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmb8;

    return-object p0
.end method

.method public static values()[Lmb8;
    .locals 1

    sget-object v0, Lmb8;->$VALUES:[Lmb8;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb8;

    return-object v0
.end method
