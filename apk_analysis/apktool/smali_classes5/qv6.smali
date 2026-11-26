.class public final enum Lqv6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqv6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqv6;

.field public static final enum DATE:Lqv6;
    .annotation runtime Lbq7;
        value = "DATE"
    .end annotation
.end field

.field public static final enum EMAIL:Lqv6;
    .annotation runtime Lbq7;
        value = "EMAIL"
    .end annotation
.end field

.field public static final enum MULTI_CHOICE_BUBBLE:Lqv6;
    .annotation runtime Lbq7;
        value = "MULTI_CHOICE_BUBBLE"
    .end annotation
.end field

.field public static final enum MULTI_CHOICE_IMAGE:Lqv6;
    .annotation runtime Lbq7;
        value = "MULTI_CHOICE_IMAGE"
    .end annotation
.end field

.field public static final enum MULTI_CHOICE_TEXT:Lqv6;
    .annotation runtime Lbq7;
        value = "MULTI_CHOICE_TEXT"
    .end annotation
.end field

.field public static final enum PHONE:Lqv6;
    .annotation runtime Lbq7;
        value = "PHONE"
    .end annotation
.end field

.field public static final enum SINGLE_CHOICE:Lqv6;
    .annotation runtime Lbq7;
        value = "SINGLE_CHOICE_DROPDOWN"
    .end annotation
.end field

.field public static final enum TEXT:Lqv6;
    .annotation runtime Lbq7;
        value = "TEXT"
    .end annotation
.end field

.field public static final enum UNUSED:Lqv6;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lqv6;

    const-string v1, "DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqv6;->DATE:Lqv6;

    new-instance v1, Lqv6;

    const-string v2, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqv6;->EMAIL:Lqv6;

    new-instance v2, Lqv6;

    const-string v3, "MULTI_CHOICE_BUBBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lqv6;->MULTI_CHOICE_BUBBLE:Lqv6;

    new-instance v3, Lqv6;

    const-string v4, "MULTI_CHOICE_TEXT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lqv6;->MULTI_CHOICE_TEXT:Lqv6;

    new-instance v4, Lqv6;

    const-string v5, "SINGLE_CHOICE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lqv6;->SINGLE_CHOICE:Lqv6;

    new-instance v5, Lqv6;

    const-string v6, "TEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lqv6;->TEXT:Lqv6;

    new-instance v6, Lqv6;

    const-string v7, "MULTI_CHOICE_IMAGE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lqv6;->MULTI_CHOICE_IMAGE:Lqv6;

    new-instance v7, Lqv6;

    const-string v8, "PHONE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lqv6;->PHONE:Lqv6;

    new-instance v8, Lqv6;

    const-string v9, "UNUSED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lqv6;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lqv6;->UNUSED:Lqv6;

    filled-new-array/range {v0 .. v8}, [Lqv6;

    move-result-object v0

    sput-object v0, Lqv6;->$VALUES:[Lqv6;

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

.method public static valueOf(Ljava/lang/String;)Lqv6;
    .locals 1

    const-class v0, Lqv6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqv6;

    return-object p0
.end method

.method public static values()[Lqv6;
    .locals 1

    sget-object v0, Lqv6;->$VALUES:[Lqv6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqv6;

    return-object v0
.end method
