.class public final enum Lo80;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo80;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lo80;

.field public static final enum FADE:Lo80;

.field public static final enum NONE:Lo80;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo80;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo80;->NONE:Lo80;

    new-instance v1, Lo80;

    const-string v2, "FADE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo80;->FADE:Lo80;

    filled-new-array {v0, v1}, [Lo80;

    move-result-object v0

    sput-object v0, Lo80;->$VALUES:[Lo80;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lo80;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo80;
    .locals 1

    const-class v0, Lo80;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo80;

    return-object p0
.end method

.method public static values()[Lo80;
    .locals 1

    sget-object v0, Lo80;->$VALUES:[Lo80;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo80;

    return-object v0
.end method
