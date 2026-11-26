.class public final enum Lje7$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lje7$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lje7$b;

.field public static final enum DEVICE_CHARGING:Lje7$b;

.field public static final enum DEVICE_IDLE:Lje7$b;

.field public static final enum NETWORK_UNMETERED:Lje7$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lje7$b;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lje7$b;->NETWORK_UNMETERED:Lje7$b;

    new-instance v1, Lje7$b;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lje7$b;->DEVICE_IDLE:Lje7$b;

    new-instance v2, Lje7$b;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lje7$b;->DEVICE_CHARGING:Lje7$b;

    filled-new-array {v0, v1, v2}, [Lje7$b;

    move-result-object v0

    sput-object v0, Lje7$b;->$VALUES:[Lje7$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lje7$b;
    .locals 1

    const-class v0, Lje7$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lje7$b;

    return-object p0
.end method

.method public static values()[Lje7$b;
    .locals 1

    sget-object v0, Lje7$b;->$VALUES:[Lje7$b;

    invoke-virtual {v0}, [Lje7$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lje7$b;

    return-object v0
.end method
