.class public final enum Lfn7$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfn7$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfn7$a;

.field public static final enum CashbackRules:Lfn7$a;
    .annotation runtime Lbq7;
        value = "CashbackRules"
    .end annotation
.end field

.field public static final enum LoyaltyProgram:Lfn7$a;
    .annotation runtime Lbq7;
        value = "LoyaltyProgram"
    .end annotation
.end field

.field public static final enum Merchant:Lfn7$a;
    .annotation runtime Lbq7;
        value = "Merchant"
    .end annotation
.end field

.field public static final enum NotSupported:Lfn7$a;

.field public static final enum Offer:Lfn7$a;
    .annotation runtime Lbq7;
        value = "Offer"
    .end annotation
.end field

.field public static final enum OffersListTitle:Lfn7$a;
    .annotation runtime Lbq7;
        value = "OffersListTitle"
    .end annotation
.end field

.field public static final enum SelectionHeader:Lfn7$a;
    .annotation runtime Lbq7;
        value = "SelectionHeader"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lfn7$a;

    const-string v1, "SelectionHeader"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfn7$a;->SelectionHeader:Lfn7$a;

    new-instance v1, Lfn7$a;

    const-string v2, "Merchant"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfn7$a;->Merchant:Lfn7$a;

    new-instance v2, Lfn7$a;

    const-string v3, "LoyaltyProgram"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfn7$a;->LoyaltyProgram:Lfn7$a;

    new-instance v3, Lfn7$a;

    const-string v4, "CashbackRules"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfn7$a;->CashbackRules:Lfn7$a;

    new-instance v4, Lfn7$a;

    const-string v5, "OffersListTitle"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfn7$a;->OffersListTitle:Lfn7$a;

    new-instance v5, Lfn7$a;

    const-string v6, "Offer"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfn7$a;->Offer:Lfn7$a;

    new-instance v6, Lfn7$a;

    const-string v7, "NotSupported"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lfn7$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lfn7$a;->NotSupported:Lfn7$a;

    filled-new-array/range {v0 .. v6}, [Lfn7$a;

    move-result-object v0

    sput-object v0, Lfn7$a;->$VALUES:[Lfn7$a;

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

.method public static valueOf(Ljava/lang/String;)Lfn7$a;
    .locals 1

    const-class v0, Lfn7$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfn7$a;

    return-object p0
.end method

.method public static values()[Lfn7$a;
    .locals 1

    sget-object v0, Lfn7$a;->$VALUES:[Lfn7$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfn7$a;

    return-object v0
.end method
