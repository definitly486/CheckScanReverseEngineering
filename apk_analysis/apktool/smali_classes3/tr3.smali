.class public final enum Ltr3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltr3;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltr3;

.field public static final enum LINEAR:Ltr3;

.field public static final enum RADIAL:Ltr3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ltr3;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltr3;->LINEAR:Ltr3;

    new-instance v1, Ltr3;

    const-string v2, "RADIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltr3;->RADIAL:Ltr3;

    filled-new-array {v0, v1}, [Ltr3;

    move-result-object v0

    sput-object v0, Ltr3;->$VALUES:[Ltr3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ltr3;
    .locals 1

    const-class v0, Ltr3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltr3;

    return-object p0
.end method

.method public static values()[Ltr3;
    .locals 1

    sget-object v0, Ltr3;->$VALUES:[Ltr3;

    invoke-virtual {v0}, [Ltr3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltr3;

    return-object v0
.end method
