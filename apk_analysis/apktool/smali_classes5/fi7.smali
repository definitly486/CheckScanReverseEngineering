.class public final enum Lfi7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi7;

.field public static final enum AlreadyScanned:Lfi7;

.field public static final enum FnsNotResponding:Lfi7;

.field public static final enum INVALID:Lfi7;

.field public static final enum NoShopReceived:Lfi7;

.field public static final enum NotCorrectFormat:Lfi7;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lfi7;

    const-string v1, "AlreadyScanned"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi7;->AlreadyScanned:Lfi7;

    new-instance v1, Lfi7;

    const-string v2, "INVALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfi7;->INVALID:Lfi7;

    new-instance v2, Lfi7;

    const-string v3, "NotCorrectFormat"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfi7;->NotCorrectFormat:Lfi7;

    new-instance v3, Lfi7;

    const-string v4, "FnsNotResponding"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfi7;->FnsNotResponding:Lfi7;

    new-instance v4, Lfi7;

    const-string v5, "NoShopReceived"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfi7;->NoShopReceived:Lfi7;

    filled-new-array {v0, v1, v2, v3, v4}, [Lfi7;

    move-result-object v0

    sput-object v0, Lfi7;->$VALUES:[Lfi7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi7;
    .locals 1

    const-class v0, Lfi7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi7;

    return-object p0
.end method

.method public static values()[Lfi7;
    .locals 1

    sget-object v0, Lfi7;->$VALUES:[Lfi7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi7;

    return-object v0
.end method
