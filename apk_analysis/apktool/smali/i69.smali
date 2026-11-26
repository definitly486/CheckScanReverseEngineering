.class public final enum Li69;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li69;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li69;

.field public static final enum CLOSED:Li69;

.field public static final enum SHOWN:Li69;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li69;

    const-string v1, "SHOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li69;->SHOWN:Li69;

    new-instance v1, Li69;

    const-string v2, "CLOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li69;->CLOSED:Li69;

    filled-new-array {v0, v1}, [Li69;

    move-result-object v0

    sput-object v0, Li69;->$VALUES:[Li69;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Li69;
    .locals 1

    const-class v0, Li69;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li69;

    return-object p0
.end method

.method public static values()[Li69;
    .locals 1

    sget-object v0, Li69;->$VALUES:[Li69;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li69;

    return-object v0
.end method
