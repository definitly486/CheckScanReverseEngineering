.class public final enum Lw48;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw48;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw48;

.field public static final enum VK:Lw48;

.field public static final enum YANDEX:Lw48;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw48;

    const-string v1, "YANDEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw48;->YANDEX:Lw48;

    new-instance v1, Lw48;

    const-string v2, "VK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw48;->VK:Lw48;

    filled-new-array {v0, v1}, [Lw48;

    move-result-object v0

    sput-object v0, Lw48;->$VALUES:[Lw48;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lw48;
    .locals 1

    const-class v0, Lw48;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw48;

    return-object p0
.end method

.method public static values()[Lw48;
    .locals 1

    sget-object v0, Lw48;->$VALUES:[Lw48;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw48;

    return-object v0
.end method
