.class public final enum Lfd3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfd3$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfd3$a;

.field public static final enum BALANCE:Lfd3$a;
    .annotation runtime Lbq7;
        value = "BALANCE"
    .end annotation
.end field

.field public static final enum BONUSES:Lfd3$a;
    .annotation runtime Lbq7;
        value = "BONUSES"
    .end annotation
.end field

.field public static final enum PRODUCTS:Lfd3$a;
    .annotation runtime Lbq7;
        value = "PRODUCTS"
    .end annotation
.end field

.field public static final enum RECEIPTS:Lfd3$a;
    .annotation runtime Lbq7;
        value = "RECEIPTS"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lfd3$a;

    const-string v1, "BONUSES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfd3$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd3$a;->BONUSES:Lfd3$a;

    new-instance v1, Lfd3$a;

    const-string v2, "RECEIPTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfd3$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd3$a;->RECEIPTS:Lfd3$a;

    new-instance v2, Lfd3$a;

    const-string v3, "PRODUCTS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lfd3$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfd3$a;->PRODUCTS:Lfd3$a;

    new-instance v3, Lfd3$a;

    const-string v4, "BALANCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lfd3$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfd3$a;->BALANCE:Lfd3$a;

    filled-new-array {v0, v1, v2, v3}, [Lfd3$a;

    move-result-object v0

    sput-object v0, Lfd3$a;->$VALUES:[Lfd3$a;

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

.method public static valueOf(Ljava/lang/String;)Lfd3$a;
    .locals 1

    const-class v0, Lfd3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd3$a;

    return-object p0
.end method

.method public static values()[Lfd3$a;
    .locals 1

    sget-object v0, Lfd3$a;->$VALUES:[Lfd3$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd3$a;

    return-object v0
.end method
