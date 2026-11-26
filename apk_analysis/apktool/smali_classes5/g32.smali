.class public final enum Lg32;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg32;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg32;

.field public static final enum PROMOCODE_INFO:Lg32;
    .annotation runtime Lbq7;
        value = "PROMOCODE_INFO"
    .end annotation
.end field

.field public static final enum WEB:Lg32;
    .annotation runtime Lbq7;
        value = "WEB"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg32;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg32;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg32;->WEB:Lg32;

    new-instance v1, Lg32;

    const-string v2, "PROMOCODE_INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg32;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg32;->PROMOCODE_INFO:Lg32;

    filled-new-array {v0, v1}, [Lg32;

    move-result-object v0

    sput-object v0, Lg32;->$VALUES:[Lg32;

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

.method public static valueOf(Ljava/lang/String;)Lg32;
    .locals 1

    const-class v0, Lg32;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg32;

    return-object p0
.end method

.method public static values()[Lg32;
    .locals 1

    sget-object v0, Lg32;->$VALUES:[Lg32;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg32;

    return-object v0
.end method
