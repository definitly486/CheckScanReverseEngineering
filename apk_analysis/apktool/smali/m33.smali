.class public final enum Lm33;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm33;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm33;

.field public static final enum CONTROL:Lm33;
    .annotation runtime Lbq7;
        value = "CONTROL"
    .end annotation
.end field

.field public static final enum TEST:Lm33;
    .annotation runtime Lbq7;
        value = "TEST"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lm33;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm33;->TEST:Lm33;

    new-instance v1, Lm33;

    const-string v2, "CONTROL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lm33;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm33;->CONTROL:Lm33;

    filled-new-array {v0, v1}, [Lm33;

    move-result-object v0

    sput-object v0, Lm33;->$VALUES:[Lm33;

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

.method public static valueOf(Ljava/lang/String;)Lm33;
    .locals 1

    const-class v0, Lm33;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm33;

    return-object p0
.end method

.method public static values()[Lm33;
    .locals 1

    sget-object v0, Lm33;->$VALUES:[Lm33;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm33;

    return-object v0
.end method
