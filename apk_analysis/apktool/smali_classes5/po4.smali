.class public final enum Lpo4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpo4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lpo4;

.field public static final enum NONE:Lpo4;

.field public static final enum PUBLICATION:Lpo4;

.field public static final enum SYNCHRONIZED:Lpo4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lpo4;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lpo4;

    const-string v2, "PUBLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpo4;->PUBLICATION:Lpo4;

    new-instance v2, Lpo4;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lpo4;->NONE:Lpo4;

    filled-new-array {v0, v1, v2}, [Lpo4;

    move-result-object v0

    sput-object v0, Lpo4;->$VALUES:[Lpo4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lpo4;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lpo4;
    .locals 1

    const-class v0, Lpo4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpo4;

    return-object p0
.end method

.method public static values()[Lpo4;
    .locals 1

    sget-object v0, Lpo4;->$VALUES:[Lpo4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpo4;

    return-object v0
.end method
