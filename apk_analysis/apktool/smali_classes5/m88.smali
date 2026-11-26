.class public final enum Lm88;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm88;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm88;

.field public static final enum APPROVED:Lm88;
    .annotation runtime Lbq7;
        value = "APPROVED"
    .end annotation
.end field

.field public static final enum DECLINED:Lm88;
    .annotation runtime Lbq7;
        value = "DECLINED"
    .end annotation
.end field

.field public static final enum PENDING:Lm88;
    .annotation runtime Lbq7;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lm88;
    .annotation runtime Lbq7;
        value = "UNKNOWN"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lm88;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm88;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm88;->APPROVED:Lm88;

    new-instance v1, Lm88;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lm88;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm88;->PENDING:Lm88;

    new-instance v2, Lm88;

    const-string v3, "DECLINED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lm88;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lm88;->DECLINED:Lm88;

    new-instance v3, Lm88;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lm88;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm88;->UNKNOWN:Lm88;

    filled-new-array {v0, v1, v2, v3}, [Lm88;

    move-result-object v0

    sput-object v0, Lm88;->$VALUES:[Lm88;

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

.method public static valueOf(Ljava/lang/String;)Lm88;
    .locals 1

    const-class v0, Lm88;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm88;

    return-object p0
.end method

.method public static values()[Lm88;
    .locals 1

    sget-object v0, Lm88;->$VALUES:[Lm88;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm88;

    return-object v0
.end method
