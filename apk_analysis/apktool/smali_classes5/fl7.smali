.class public final enum Lfl7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfl7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfl7;

.field public static final enum INTEGRITY:Lfl7;

.field public static final enum NONE:Lfl7;

.field public static final enum PRIVACY_AND_INTEGRITY:Lfl7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfl7;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl7;->NONE:Lfl7;

    new-instance v1, Lfl7;

    const-string v2, "INTEGRITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfl7;->INTEGRITY:Lfl7;

    new-instance v2, Lfl7;

    const-string v3, "PRIVACY_AND_INTEGRITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfl7;->PRIVACY_AND_INTEGRITY:Lfl7;

    filled-new-array {v0, v1, v2}, [Lfl7;

    move-result-object v0

    sput-object v0, Lfl7;->$VALUES:[Lfl7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfl7;
    .locals 1

    const-class v0, Lfl7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfl7;

    return-object p0
.end method

.method public static values()[Lfl7;
    .locals 1

    sget-object v0, Lfl7;->$VALUES:[Lfl7;

    invoke-virtual {v0}, [Lfl7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfl7;

    return-object v0
.end method
