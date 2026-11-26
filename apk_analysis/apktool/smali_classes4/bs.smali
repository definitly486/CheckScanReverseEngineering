.class public final enum Lbs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lbs;

.field public static final enum ALIGN_ANCHOR:Lbs;

.field public static final enum ALIGN_BALLOON:Lbs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbs;

    const-string v1, "ALIGN_BALLOON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbs;->ALIGN_BALLOON:Lbs;

    new-instance v1, Lbs;

    const-string v2, "ALIGN_ANCHOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbs;->ALIGN_ANCHOR:Lbs;

    filled-new-array {v0, v1}, [Lbs;

    move-result-object v0

    sput-object v0, Lbs;->$VALUES:[Lbs;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lbs;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbs;
    .locals 1

    const-class v0, Lbs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbs;

    return-object p0
.end method

.method public static values()[Lbs;
    .locals 1

    sget-object v0, Lbs;->$VALUES:[Lbs;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbs;

    return-object v0
.end method
