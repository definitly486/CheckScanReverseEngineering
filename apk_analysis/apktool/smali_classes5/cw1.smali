.class public final enum Lcw1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcw1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcw1;

.field public static final enum CALL:Lcw1;
    .annotation runtime Lbq7;
        value = "CALL"
    .end annotation
.end field

.field public static final enum EMAIL:Lcw1;
    .annotation runtime Lbq7;
        value = "EMAIL"
    .end annotation
.end field

.field public static final enum SMS:Lcw1;
    .annotation runtime Lbq7;
        value = "SMS"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcw1;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcw1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcw1;->EMAIL:Lcw1;

    new-instance v1, Lcw1;

    const-string v2, "SMS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcw1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcw1;->SMS:Lcw1;

    new-instance v2, Lcw1;

    const-string v3, "CALL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcw1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcw1;->CALL:Lcw1;

    filled-new-array {v0, v1, v2}, [Lcw1;

    move-result-object v0

    sput-object v0, Lcw1;->$VALUES:[Lcw1;

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

.method public static valueOf(Ljava/lang/String;)Lcw1;
    .locals 1

    const-class v0, Lcw1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcw1;

    return-object p0
.end method

.method public static values()[Lcw1;
    .locals 1

    sget-object v0, Lcw1;->$VALUES:[Lcw1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcw1;

    return-object v0
.end method
