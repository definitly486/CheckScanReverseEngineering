.class public final enum Lam2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lam2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lam2;

.field public static final enum EMAIL:Lam2;
    .annotation runtime Lbq7;
        value = "EMAIL"
    .end annotation
.end field

.field public static final enum USER_CALL:Lam2;
    .annotation runtime Lbq7;
        value = "USER_CALL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lam2;

    const-string v1, "USER_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lam2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam2;->USER_CALL:Lam2;

    new-instance v1, Lam2;

    const-string v2, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lam2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lam2;->EMAIL:Lam2;

    filled-new-array {v0, v1}, [Lam2;

    move-result-object v0

    sput-object v0, Lam2;->$VALUES:[Lam2;

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

.method public static valueOf(Ljava/lang/String;)Lam2;
    .locals 1

    const-class v0, Lam2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lam2;

    return-object p0
.end method

.method public static values()[Lam2;
    .locals 1

    sget-object v0, Lam2;->$VALUES:[Lam2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam2;

    return-object v0
.end method
