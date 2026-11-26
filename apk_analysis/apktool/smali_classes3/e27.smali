.class public final enum Le27;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le27;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Le27;

.field public static final enum AUTOMATIC:Le27;

.field public static final enum HARDWARE:Le27;

.field public static final enum SOFTWARE:Le27;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Le27;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le27;->AUTOMATIC:Le27;

    new-instance v1, Le27;

    const-string v2, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le27;->HARDWARE:Le27;

    new-instance v2, Le27;

    const-string v3, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Le27;->SOFTWARE:Le27;

    filled-new-array {v0, v1, v2}, [Le27;

    move-result-object v0

    sput-object v0, Le27;->$VALUES:[Le27;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Le27;
    .locals 1

    const-class v0, Le27;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le27;

    return-object p0
.end method

.method public static values()[Le27;
    .locals 1

    sget-object v0, Le27;->$VALUES:[Le27;

    invoke-virtual {v0}, [Le27;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le27;

    return-object v0
.end method
