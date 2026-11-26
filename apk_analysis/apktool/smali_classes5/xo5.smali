.class public final enum Lxo5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxo5$a;,
        Lxo5$c;,
        Lxo5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxo5;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxo5;

.field public static final enum COMPLETE:Lxo5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lxo5;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxo5;->COMPLETE:Lxo5;

    filled-new-array {v0}, [Lxo5;

    move-result-object v0

    sput-object v0, Lxo5;->$VALUES:[Lxo5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxo5;
    .locals 1

    const-class v0, Lxo5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxo5;

    return-object p0
.end method

.method public static values()[Lxo5;
    .locals 1

    sget-object v0, Lxo5;->$VALUES:[Lxo5;

    invoke-virtual {v0}, [Lxo5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxo5;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NotificationLite.Complete"

    return-object p0
.end method
