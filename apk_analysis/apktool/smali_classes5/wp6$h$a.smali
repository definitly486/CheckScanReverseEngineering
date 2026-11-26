.class public final enum Lwp6$h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp6$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwp6$h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwp6$h$a;

.field public static final enum COMMON:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "COMMON"
    .end annotation
.end field

.field public static final enum COMMON_RICH_PREVIEW:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "COMMON_RICH_PREVIEW"
    .end annotation
.end field

.field public static final enum INFO:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "INFO"
    .end annotation
.end field

.field public static final enum MFO_RICH_PREVIEW:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "MFO_RICH_PREVIEW"
    .end annotation
.end field

.field public static final enum MINI_LOGO_BANNER:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "MINI_LOGO_BANNER"
    .end annotation
.end field

.field public static final enum MINI_LOGO_TRANSFER_BANNER:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "MINI_LOGO_TRANSFER_BANNER"
    .end annotation
.end field

.field public static final enum NOT_SUPPORTED:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "NOT_SUPPORTED"
    .end annotation
.end field

.field public static final enum TITLE:Lwp6$h$a;
    .annotation runtime Lbq7;
        value = "TITLE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lwp6$h$a;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    new-instance v1, Lwp6$h$a;

    const-string v2, "COMMON_RICH_PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwp6$h$a;->COMMON_RICH_PREVIEW:Lwp6$h$a;

    new-instance v2, Lwp6$h$a;

    const-string v3, "MFO_RICH_PREVIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lwp6$h$a;->MFO_RICH_PREVIEW:Lwp6$h$a;

    new-instance v3, Lwp6$h$a;

    const-string v4, "MINI_LOGO_BANNER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lwp6$h$a;->MINI_LOGO_BANNER:Lwp6$h$a;

    new-instance v4, Lwp6$h$a;

    const-string v5, "MINI_LOGO_TRANSFER_BANNER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lwp6$h$a;->MINI_LOGO_TRANSFER_BANNER:Lwp6$h$a;

    new-instance v5, Lwp6$h$a;

    const-string v6, "TITLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lwp6$h$a;->TITLE:Lwp6$h$a;

    new-instance v6, Lwp6$h$a;

    const-string v7, "INFO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lwp6$h$a;->INFO:Lwp6$h$a;

    new-instance v7, Lwp6$h$a;

    const-string v8, "NOT_SUPPORTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lwp6$h$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lwp6$h$a;->NOT_SUPPORTED:Lwp6$h$a;

    filled-new-array/range {v0 .. v7}, [Lwp6$h$a;

    move-result-object v0

    sput-object v0, Lwp6$h$a;->$VALUES:[Lwp6$h$a;

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

.method public static valueOf(Ljava/lang/String;)Lwp6$h$a;
    .locals 1

    const-class v0, Lwp6$h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwp6$h$a;

    return-object p0
.end method

.method public static values()[Lwp6$h$a;
    .locals 1

    sget-object v0, Lwp6$h$a;->$VALUES:[Lwp6$h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwp6$h$a;

    return-object v0
.end method
