.class public final enum Lxw8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxw8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxw8;

.field public static final enum CUSTOM_MANAGERS:Lxw8;

.field public static final enum FAKE:Lxw8;

.field public static final enum MTLS:Lxw8;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lxw8;

    const-string v1, "FAKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxw8;->FAKE:Lxw8;

    new-instance v1, Lxw8;

    const-string v2, "MTLS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxw8;->MTLS:Lxw8;

    new-instance v2, Lxw8;

    const-string v3, "CUSTOM_MANAGERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lxw8;->CUSTOM_MANAGERS:Lxw8;

    filled-new-array {v0, v1, v2}, [Lxw8;

    move-result-object v0

    sput-object v0, Lxw8;->$VALUES:[Lxw8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxw8;
    .locals 1

    const-class v0, Lxw8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxw8;

    return-object p0
.end method

.method public static values()[Lxw8;
    .locals 1

    sget-object v0, Lxw8;->$VALUES:[Lxw8;

    invoke-virtual {v0}, [Lxw8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxw8;

    return-object v0
.end method
