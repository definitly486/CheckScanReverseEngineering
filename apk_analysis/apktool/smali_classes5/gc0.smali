.class public final enum Lgc0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgc0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgc0;

.field public static final enum ACTIVITY_BONUS:Lgc0;

.field public static final enum BOTTOM_SHEET:Lgc0;

.field public static final enum CHECK:Lgc0;

.field public static final enum HEADER:Lgc0;

.field public static final enum PROMO:Lgc0;

.field public static final enum SPLASH:Lgc0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lgc0;

    const-string v1, "CHECK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgc0;->CHECK:Lgc0;

    new-instance v1, Lgc0;

    const-string v2, "BOTTOM_SHEET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgc0;->BOTTOM_SHEET:Lgc0;

    new-instance v2, Lgc0;

    const-string v3, "HEADER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgc0;->HEADER:Lgc0;

    new-instance v3, Lgc0;

    const-string v4, "PROMO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgc0;->PROMO:Lgc0;

    new-instance v4, Lgc0;

    const-string v5, "SPLASH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgc0;->SPLASH:Lgc0;

    new-instance v5, Lgc0;

    const-string v6, "ACTIVITY_BONUS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgc0;->ACTIVITY_BONUS:Lgc0;

    filled-new-array/range {v0 .. v5}, [Lgc0;

    move-result-object v0

    sput-object v0, Lgc0;->$VALUES:[Lgc0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgc0;
    .locals 1

    const-class v0, Lgc0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgc0;

    return-object p0
.end method

.method public static values()[Lgc0;
    .locals 1

    sget-object v0, Lgc0;->$VALUES:[Lgc0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc0;

    return-object v0
.end method
