.class public final enum Lk70$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk70$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lk70$b$a;

.field public static final enum COMMON_BANNER:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "COMMON_BANNER"
    .end annotation
.end field

.field public static final enum COMMON_CELL:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "COMMON_CELL"
    .end annotation
.end field

.field public static final enum HEADER_LOGO_BANNERS:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "HEADER_LOGO_BANNERS"
    .end annotation
.end field

.field public static final enum MINI_LOGO_BANNER:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "MINI_LOGO_BANNER"
    .end annotation
.end field

.field public static final enum NOT_SUPPORTED:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "NOT_SUPPORTED"
    .end annotation
.end field

.field public static final enum PHONE:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "PHONE"
    .end annotation
.end field

.field public static final enum REGISTER:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "REGISTER"
    .end annotation
.end field

.field public static final enum SBP_PHONE:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "SBP_PHONE"
    .end annotation
.end field

.field public static final enum TITLE:Lk70$b$a;
    .annotation runtime Lbq7;
        value = "TITLE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lk70$b$a;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk70$b$a;->REGISTER:Lk70$b$a;

    new-instance v1, Lk70$b$a;

    const-string v2, "PHONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk70$b$a;->PHONE:Lk70$b$a;

    new-instance v2, Lk70$b$a;

    const-string v3, "SBP_PHONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk70$b$a;->SBP_PHONE:Lk70$b$a;

    new-instance v3, Lk70$b$a;

    const-string v4, "COMMON_CELL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk70$b$a;->COMMON_CELL:Lk70$b$a;

    new-instance v4, Lk70$b$a;

    const-string v5, "COMMON_BANNER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lk70$b$a;->COMMON_BANNER:Lk70$b$a;

    new-instance v5, Lk70$b$a;

    const-string v6, "MINI_LOGO_BANNER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lk70$b$a;->MINI_LOGO_BANNER:Lk70$b$a;

    new-instance v6, Lk70$b$a;

    const-string v7, "HEADER_LOGO_BANNERS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lk70$b$a;->HEADER_LOGO_BANNERS:Lk70$b$a;

    new-instance v7, Lk70$b$a;

    const-string v8, "TITLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lk70$b$a;->TITLE:Lk70$b$a;

    new-instance v8, Lk70$b$a;

    const-string v9, "NOT_SUPPORTED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lk70$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lk70$b$a;->NOT_SUPPORTED:Lk70$b$a;

    filled-new-array/range {v0 .. v8}, [Lk70$b$a;

    move-result-object v0

    sput-object v0, Lk70$b$a;->$VALUES:[Lk70$b$a;

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

.method public static valueOf(Ljava/lang/String;)Lk70$b$a;
    .locals 1

    const-class v0, Lk70$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk70$b$a;

    return-object p0
.end method

.method public static values()[Lk70$b$a;
    .locals 1

    sget-object v0, Lk70$b$a;->$VALUES:[Lk70$b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk70$b$a;

    return-object v0
.end method
