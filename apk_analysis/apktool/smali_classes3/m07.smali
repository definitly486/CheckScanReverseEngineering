.class public final enum Lm07;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm07;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm07;

.field public static final enum REDUCED_MOTION:Lm07;

.field public static final enum STANDARD_MOTION:Lm07;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lm07;

    const-string v1, "STANDARD_MOTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm07;->STANDARD_MOTION:Lm07;

    new-instance v1, Lm07;

    const-string v2, "REDUCED_MOTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm07;->REDUCED_MOTION:Lm07;

    filled-new-array {v0, v1}, [Lm07;

    move-result-object v0

    sput-object v0, Lm07;->$VALUES:[Lm07;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lm07;
    .locals 1

    const-class v0, Lm07;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm07;

    return-object p0
.end method

.method public static values()[Lm07;
    .locals 1

    sget-object v0, Lm07;->$VALUES:[Lm07;

    invoke-virtual {v0}, [Lm07;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm07;

    return-object v0
.end method
