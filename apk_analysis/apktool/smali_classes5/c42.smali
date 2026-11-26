.class public final enum Lc42;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc42;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lc42;

.field public static final enum BARCODE:Lc42;
    .annotation runtime Lbq7;
        value = "BARCODE"
    .end annotation
.end field

.field public static final enum IMAGE:Lc42;
    .annotation runtime Lbq7;
        value = "IMAGE"
    .end annotation
.end field

.field public static final enum PROMOCODE:Lc42;
    .annotation runtime Lbq7;
        value = "PROMOCODE"
    .end annotation
.end field

.field public static final enum PROMOCODE_INFO:Lc42;
    .annotation runtime Lbq7;
        value = "PROMOCODE_INFO"
    .end annotation
.end field

.field public static final enum QRCODE:Lc42;
    .annotation runtime Lbq7;
        value = "QRCODE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc42;

    const-string v1, "PROMOCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc42;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc42;->PROMOCODE:Lc42;

    new-instance v1, Lc42;

    const-string v2, "BARCODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lc42;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc42;->BARCODE:Lc42;

    new-instance v2, Lc42;

    const-string v3, "QRCODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lc42;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc42;->QRCODE:Lc42;

    new-instance v3, Lc42;

    const-string v4, "IMAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lc42;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc42;->IMAGE:Lc42;

    new-instance v4, Lc42;

    const-string v5, "PROMOCODE_INFO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lc42;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lc42;->PROMOCODE_INFO:Lc42;

    filled-new-array {v0, v1, v2, v3, v4}, [Lc42;

    move-result-object v0

    sput-object v0, Lc42;->$VALUES:[Lc42;

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

.method public static valueOf(Ljava/lang/String;)Lc42;
    .locals 1

    const-class v0, Lc42;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc42;

    return-object p0
.end method

.method public static values()[Lc42;
    .locals 1

    sget-object v0, Lc42;->$VALUES:[Lc42;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc42;

    return-object v0
.end method
