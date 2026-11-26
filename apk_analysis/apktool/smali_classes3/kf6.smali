.class public final enum Lkf6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkf6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkf6;

.field public static final enum DISPLAY_P3:Lkf6;

.field public static final enum SRGB:Lkf6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkf6;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf6;->SRGB:Lkf6;

    new-instance v1, Lkf6;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkf6;->DISPLAY_P3:Lkf6;

    filled-new-array {v0, v1}, [Lkf6;

    move-result-object v0

    sput-object v0, Lkf6;->$VALUES:[Lkf6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkf6;
    .locals 1

    const-class v0, Lkf6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkf6;

    return-object p0
.end method

.method public static values()[Lkf6;
    .locals 1

    sget-object v0, Lkf6;->$VALUES:[Lkf6;

    invoke-virtual {v0}, [Lkf6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkf6;

    return-object v0
.end method
