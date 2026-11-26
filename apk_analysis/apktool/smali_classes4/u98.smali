.class public final enum Lu98;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu98;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu98;

.field public static final enum LEGACY_STRICT:Lu98;

.field public static final enum LENIENT:Lu98;

.field public static final enum STRICT:Lu98;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu98;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu98;->LENIENT:Lu98;

    new-instance v1, Lu98;

    const-string v2, "LEGACY_STRICT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu98;->LEGACY_STRICT:Lu98;

    new-instance v2, Lu98;

    const-string v3, "STRICT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu98;->STRICT:Lu98;

    filled-new-array {v0, v1, v2}, [Lu98;

    move-result-object v0

    sput-object v0, Lu98;->$VALUES:[Lu98;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu98;
    .locals 1

    const-class v0, Lu98;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu98;

    return-object p0
.end method

.method public static values()[Lu98;
    .locals 1

    sget-object v0, Lu98;->$VALUES:[Lu98;

    invoke-virtual {v0}, [Lu98;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu98;

    return-object v0
.end method
