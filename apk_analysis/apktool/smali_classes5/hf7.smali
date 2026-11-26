.class public final enum Lhf7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhf7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhf7;

.field public static final enum CallScreen:Lhf7;

.field public static final enum SmsScreen:Lhf7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhf7;

    const-string v1, "SmsScreen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf7;->SmsScreen:Lhf7;

    new-instance v1, Lhf7;

    const-string v2, "CallScreen"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhf7;->CallScreen:Lhf7;

    filled-new-array {v0, v1}, [Lhf7;

    move-result-object v0

    sput-object v0, Lhf7;->$VALUES:[Lhf7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhf7;
    .locals 1

    const-class v0, Lhf7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhf7;

    return-object p0
.end method

.method public static values()[Lhf7;
    .locals 1

    sget-object v0, Lhf7;->$VALUES:[Lhf7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf7;

    return-object v0
.end method
