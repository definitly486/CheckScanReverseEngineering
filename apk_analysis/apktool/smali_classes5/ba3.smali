.class public final enum Lba3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lba3;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lba3;

.field public static final enum BOTTOM_UP:Lba3;

.field public static final enum TOP_DOWN:Lba3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lba3;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lba3;->TOP_DOWN:Lba3;

    new-instance v1, Lba3;

    const-string v2, "BOTTOM_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lba3;->BOTTOM_UP:Lba3;

    filled-new-array {v0, v1}, [Lba3;

    move-result-object v0

    sput-object v0, Lba3;->$VALUES:[Lba3;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lba3;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lba3;
    .locals 1

    const-class v0, Lba3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lba3;

    return-object p0
.end method

.method public static values()[Lba3;
    .locals 1

    sget-object v0, Lba3;->$VALUES:[Lba3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lba3;

    return-object v0
.end method
