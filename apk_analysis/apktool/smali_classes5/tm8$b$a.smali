.class public final enum Ltm8$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltm8$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltm8$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltm8$b$a;

.field public static final enum COMPLETED:Ltm8$b$a;
    .annotation runtime Lbq7;
        value = "COMPLETED"
    .end annotation
.end field

.field public static final enum CURRENT:Ltm8$b$a;
    .annotation runtime Lbq7;
        value = "CURRENT"
    .end annotation
.end field

.field public static final enum DISABLED:Ltm8$b$a;
    .annotation runtime Lbq7;
        value = "DISABLED"
    .end annotation
.end field

.field public static final enum FINAL:Ltm8$b$a;
    .annotation runtime Lbq7;
        value = "FINAL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltm8$b$a;

    const-string v1, "COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltm8$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltm8$b$a;->COMPLETED:Ltm8$b$a;

    new-instance v1, Ltm8$b$a;

    const-string v2, "CURRENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ltm8$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltm8$b$a;->CURRENT:Ltm8$b$a;

    new-instance v2, Ltm8$b$a;

    const-string v3, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ltm8$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ltm8$b$a;->DISABLED:Ltm8$b$a;

    new-instance v3, Ltm8$b$a;

    const-string v4, "FINAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ltm8$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltm8$b$a;->FINAL:Ltm8$b$a;

    filled-new-array {v0, v1, v2, v3}, [Ltm8$b$a;

    move-result-object v0

    sput-object v0, Ltm8$b$a;->$VALUES:[Ltm8$b$a;

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

.method public static valueOf(Ljava/lang/String;)Ltm8$b$a;
    .locals 1

    const-class v0, Ltm8$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltm8$b$a;

    return-object p0
.end method

.method public static values()[Ltm8$b$a;
    .locals 1

    sget-object v0, Ltm8$b$a;->$VALUES:[Ltm8$b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltm8$b$a;

    return-object v0
.end method
