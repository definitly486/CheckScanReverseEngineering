.class public final enum Lo33;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo33;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo33;

.field public static final enum CONTROL:Lo33;
    .annotation runtime Lbq7;
        value = "CONTROL"
    .end annotation
.end field

.field public static final enum TEST:Lo33;
    .annotation runtime Lbq7;
        value = "TEST"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo33;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo33;->TEST:Lo33;

    new-instance v1, Lo33;

    const-string v2, "CONTROL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo33;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo33;->CONTROL:Lo33;

    filled-new-array {v0, v1}, [Lo33;

    move-result-object v0

    sput-object v0, Lo33;->$VALUES:[Lo33;

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

.method public static valueOf(Ljava/lang/String;)Lo33;
    .locals 1

    const-class v0, Lo33;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo33;

    return-object p0
.end method

.method public static values()[Lo33;
    .locals 1

    sget-object v0, Lo33;->$VALUES:[Lo33;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo33;

    return-object v0
.end method
