.class public final enum Lge8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lge8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lge8;

.field public static final enum IMAGE:Lge8;
    .annotation runtime Lbq7;
        value = "IMAGE"
    .end annotation
.end field

.field public static final enum TEXT:Lge8;
    .annotation runtime Lbq7;
        value = "TEXT"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lge8;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lge8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lge8;->TEXT:Lge8;

    new-instance v1, Lge8;

    const-string v2, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lge8;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lge8;->IMAGE:Lge8;

    filled-new-array {v0, v1}, [Lge8;

    move-result-object v0

    sput-object v0, Lge8;->$VALUES:[Lge8;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lge8;
    .locals 1

    const-class v0, Lge8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lge8;

    return-object p0
.end method

.method public static values()[Lge8;
    .locals 1

    sget-object v0, Lge8;->$VALUES:[Lge8;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lge8;

    return-object v0
.end method
