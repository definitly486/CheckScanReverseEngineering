.class public final enum Ldt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldt;

.field public static final enum AUTOMATIC:Ldt;

.field public static final enum DISABLED:Ldt;

.field public static final enum ENABLED:Ldt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldt;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldt;->AUTOMATIC:Ldt;

    new-instance v1, Ldt;

    const-string v2, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldt;->ENABLED:Ldt;

    new-instance v2, Ldt;

    const-string v3, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldt;->DISABLED:Ldt;

    filled-new-array {v0, v1, v2}, [Ldt;

    move-result-object v0

    sput-object v0, Ldt;->$VALUES:[Ldt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldt;
    .locals 1

    const-class v0, Ldt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldt;

    return-object p0
.end method

.method public static values()[Ldt;
    .locals 1

    sget-object v0, Ldt;->$VALUES:[Ldt;

    invoke-virtual {v0}, [Ldt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldt;

    return-object v0
.end method
