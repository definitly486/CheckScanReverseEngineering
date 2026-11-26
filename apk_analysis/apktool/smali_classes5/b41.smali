.class public final enum Lb41;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb41;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb41;

.field public static final enum API_BANK_NOT_REGISTERED:Lb41;
    .annotation runtime Lbq7;
        value = "API_BANK_NOT_REGISTERED"
    .end annotation
.end field

.field public static final enum FIRST_WRONG_UPRID:Lb41;
    .annotation runtime Lbq7;
        value = "FIRST_WRONG_UPRID"
    .end annotation
.end field

.field public static final enum NOT_REGISTERED:Lb41;
    .annotation runtime Lbq7;
        value = "NOT_REGISTERED"
    .end annotation
.end field

.field public static final enum NO_UPRID:Lb41;
    .annotation runtime Lbq7;
        value = "NO_UPRID"
    .end annotation
.end field

.field public static final enum PROCESSING_UPRID:Lb41;
    .annotation runtime Lbq7;
        value = "PROCESSING_UPRID"
    .end annotation
.end field

.field public static final enum UPRID:Lb41;
    .annotation runtime Lbq7;
        value = "UPRID"
    .end annotation
.end field

.field public static final enum WRONG_UPRID:Lb41;
    .annotation runtime Lbq7;
        value = "WRONG_UPRID"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lb41;

    const-string v1, "NOT_REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb41;->NOT_REGISTERED:Lb41;

    new-instance v1, Lb41;

    const-string v2, "API_BANK_NOT_REGISTERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb41;->API_BANK_NOT_REGISTERED:Lb41;

    new-instance v2, Lb41;

    const-string v3, "NO_UPRID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lb41;->NO_UPRID:Lb41;

    new-instance v3, Lb41;

    const-string v4, "PROCESSING_UPRID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb41;->PROCESSING_UPRID:Lb41;

    new-instance v4, Lb41;

    const-string v5, "FIRST_WRONG_UPRID"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lb41;->FIRST_WRONG_UPRID:Lb41;

    new-instance v5, Lb41;

    const-string v6, "WRONG_UPRID"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb41;->WRONG_UPRID:Lb41;

    new-instance v6, Lb41;

    const-string v7, "UPRID"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lb41;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lb41;->UPRID:Lb41;

    filled-new-array/range {v0 .. v6}, [Lb41;

    move-result-object v0

    sput-object v0, Lb41;->$VALUES:[Lb41;

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

.method public static valueOf(Ljava/lang/String;)Lb41;
    .locals 1

    const-class v0, Lb41;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb41;

    return-object p0
.end method

.method public static values()[Lb41;
    .locals 1

    sget-object v0, Lb41;->$VALUES:[Lb41;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb41;

    return-object v0
.end method
