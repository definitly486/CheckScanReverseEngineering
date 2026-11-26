.class public final enum Lri8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lri8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lri8;

.field public static final enum Balance:Lri8;

.field public static final enum Bonuses:Lri8;

.field public static final enum Cheques:Lri8;

.field public static final enum Discount:Lri8;

.field public static final enum Games:Lri8;

.field public static final enum Tasks:Lri8;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lri8;

    const-string v1, "Cheques"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lri8;->Cheques:Lri8;

    new-instance v1, Lri8;

    const-string v2, "Bonuses"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lri8;->Bonuses:Lri8;

    new-instance v2, Lri8;

    const-string v3, "Discount"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lri8;->Discount:Lri8;

    new-instance v3, Lri8;

    const-string v4, "Balance"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lri8;->Balance:Lri8;

    new-instance v4, Lri8;

    const-string v5, "Tasks"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lri8;->Tasks:Lri8;

    new-instance v5, Lri8;

    const-string v6, "Games"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lri8;->Games:Lri8;

    filled-new-array/range {v0 .. v5}, [Lri8;

    move-result-object v0

    sput-object v0, Lri8;->$VALUES:[Lri8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lri8;
    .locals 1

    const-class v0, Lri8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lri8;

    return-object p0
.end method

.method public static values()[Lri8;
    .locals 1

    sget-object v0, Lri8;->$VALUES:[Lri8;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lri8;

    return-object v0
.end method
