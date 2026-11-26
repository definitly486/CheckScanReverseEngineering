.class public final enum Lp39;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp39;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lp39;

.field public static final enum ALREADY_SELECTED:Lp39;

.field public static final enum CANCELLED:Lp39;

.field public static final enum REREGISTER:Lp39;

.field public static final enum SUCCESSFUL:Lp39;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lp39;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp39;->SUCCESSFUL:Lp39;

    new-instance v1, Lp39;

    const-string v2, "REREGISTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp39;->REREGISTER:Lp39;

    new-instance v2, Lp39;

    const-string v3, "CANCELLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lp39;->CANCELLED:Lp39;

    new-instance v3, Lp39;

    const-string v4, "ALREADY_SELECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lp39;->ALREADY_SELECTED:Lp39;

    filled-new-array {v0, v1, v2, v3}, [Lp39;

    move-result-object v0

    sput-object v0, Lp39;->$VALUES:[Lp39;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lp39;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lp39;
    .locals 1

    const-class v0, Lp39;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp39;

    return-object p0
.end method

.method public static values()[Lp39;
    .locals 1

    sget-object v0, Lp39;->$VALUES:[Lp39;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp39;

    return-object v0
.end method
