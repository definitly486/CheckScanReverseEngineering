.class public final enum Lt86;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt86;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lt86;

.field public static final enum ALIGNMENT:Lt86;

.field public static final enum CENTER:Lt86;

.field public static final enum DROPDOWN:Lt86;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lt86;

    const-string v1, "ALIGNMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt86;->ALIGNMENT:Lt86;

    new-instance v1, Lt86;

    const-string v2, "DROPDOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt86;->DROPDOWN:Lt86;

    new-instance v2, Lt86;

    const-string v3, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lt86;->CENTER:Lt86;

    filled-new-array {v0, v1, v2}, [Lt86;

    move-result-object v0

    sput-object v0, Lt86;->$VALUES:[Lt86;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lt86;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lt86;
    .locals 1

    const-class v0, Lt86;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt86;

    return-object p0
.end method

.method public static values()[Lt86;
    .locals 1

    sget-object v0, Lt86;->$VALUES:[Lt86;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt86;

    return-object v0
.end method
