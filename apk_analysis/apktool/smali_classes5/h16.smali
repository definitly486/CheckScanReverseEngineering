.class public final enum Lh16;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh16;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lh16;

.field public static final enum NONE:Lh16;

.field public static final enum SPACE:Lh16;

.field public static final enum ZERO:Lh16;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lh16;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh16;->NONE:Lh16;

    new-instance v1, Lh16;

    const-string v2, "ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh16;->ZERO:Lh16;

    new-instance v2, Lh16;

    const-string v3, "SPACE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh16;->SPACE:Lh16;

    filled-new-array {v0, v1, v2}, [Lh16;

    move-result-object v0

    sput-object v0, Lh16;->$VALUES:[Lh16;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lh16;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lh16;
    .locals 1

    const-class v0, Lh16;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh16;

    return-object p0
.end method

.method public static values()[Lh16;
    .locals 1

    sget-object v0, Lh16;->$VALUES:[Lh16;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh16;

    return-object v0
.end method
