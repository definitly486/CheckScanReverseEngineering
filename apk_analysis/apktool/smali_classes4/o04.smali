.class public final enum Lo04;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo04;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lo04;

.field public static final enum BOTTOM:Lo04;

.field public static final enum END:Lo04;

.field public static final enum START:Lo04;

.field public static final enum TOP:Lo04;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo04;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo04;->START:Lo04;

    new-instance v1, Lo04;

    const-string v2, "END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo04;->END:Lo04;

    new-instance v2, Lo04;

    const-string v3, "TOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lo04;->TOP:Lo04;

    new-instance v3, Lo04;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo04;->BOTTOM:Lo04;

    filled-new-array {v0, v1, v2, v3}, [Lo04;

    move-result-object v0

    sput-object v0, Lo04;->$VALUES:[Lo04;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lo04;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo04;
    .locals 1

    const-class v0, Lo04;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo04;

    return-object p0
.end method

.method public static values()[Lo04;
    .locals 1

    sget-object v0, Lo04;->$VALUES:[Lo04;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo04;

    return-object v0
.end method
