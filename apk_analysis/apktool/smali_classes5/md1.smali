.class public final enum Lmd1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmd1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmd1;

.field public static final enum REWARD_ECHECKS_OLD:Lmd1;

.field public static final enum REWARD_INN_MAX:Lmd1;

.field public static final enum REWARD_IN_MONTH:Lmd1;

.field public static final enum REWARD_MOBILE_MIN:Lmd1;

.field public static final enum REWARD_NOT_INCOME:Lmd1;

.field public static final enum REWARD_NO_VALID:Lmd1;

.field public static final enum REWARD_RETURN:Lmd1;

.field public static final enum REWARD_TOTAL_MIN:Lmd1;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lmd1;

    const-string v1, "REWARD_IN_MONTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmd1;->REWARD_IN_MONTH:Lmd1;

    new-instance v1, Lmd1;

    const-string v2, "REWARD_TOTAL_MIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmd1;->REWARD_TOTAL_MIN:Lmd1;

    new-instance v2, Lmd1;

    const-string v3, "REWARD_MOBILE_MIN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lmd1;->REWARD_MOBILE_MIN:Lmd1;

    new-instance v3, Lmd1;

    const-string v4, "REWARD_INN_MAX"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmd1;->REWARD_INN_MAX:Lmd1;

    new-instance v4, Lmd1;

    const-string v5, "REWARD_RETURN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lmd1;->REWARD_RETURN:Lmd1;

    new-instance v5, Lmd1;

    const-string v6, "REWARD_NOT_INCOME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmd1;->REWARD_NOT_INCOME:Lmd1;

    new-instance v6, Lmd1;

    const-string v7, "REWARD_NO_VALID"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lmd1;->REWARD_NO_VALID:Lmd1;

    new-instance v7, Lmd1;

    const-string v8, "REWARD_ECHECKS_OLD"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmd1;->REWARD_ECHECKS_OLD:Lmd1;

    filled-new-array/range {v0 .. v7}, [Lmd1;

    move-result-object v0

    sput-object v0, Lmd1;->$VALUES:[Lmd1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmd1;
    .locals 1

    const-class v0, Lmd1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmd1;

    return-object p0
.end method

.method public static values()[Lmd1;
    .locals 1

    sget-object v0, Lmd1;->$VALUES:[Lmd1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmd1;

    return-object v0
.end method
