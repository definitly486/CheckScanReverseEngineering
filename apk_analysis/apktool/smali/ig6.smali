.class public final enum Lig6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lig6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lig6;

.field public static final enum DEFAULT:Lig6;

.field public static final enum HIGHEST:Lig6;

.field public static final enum VERY_LOW:Lig6;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lig6;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lig6;->DEFAULT:Lig6;

    new-instance v1, Lig6;

    const-string v2, "VERY_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lig6;->VERY_LOW:Lig6;

    new-instance v2, Lig6;

    const-string v3, "HIGHEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lig6;->HIGHEST:Lig6;

    filled-new-array {v0, v1, v2}, [Lig6;

    move-result-object v0

    sput-object v0, Lig6;->$VALUES:[Lig6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lig6;
    .locals 1

    const-class v0, Lig6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lig6;

    return-object p0
.end method

.method public static values()[Lig6;
    .locals 1

    sget-object v0, Lig6;->$VALUES:[Lig6;

    invoke-virtual {v0}, [Lig6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lig6;

    return-object v0
.end method
