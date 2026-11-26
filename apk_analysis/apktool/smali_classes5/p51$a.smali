.class public final enum Lp51$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp51$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lp51$a;

.field public static final enum ToBankCard:Lp51$a;

.field public static final enum ToPhone:Lp51$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lp51$a;

    const-string v1, "ToBankCard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp51$a;->ToBankCard:Lp51$a;

    new-instance v1, Lp51$a;

    const-string v2, "ToPhone"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp51$a;->ToPhone:Lp51$a;

    filled-new-array {v0, v1}, [Lp51$a;

    move-result-object v0

    sput-object v0, Lp51$a;->$VALUES:[Lp51$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lp51$a;
    .locals 1

    const-class v0, Lp51$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp51$a;

    return-object p0
.end method

.method public static values()[Lp51$a;
    .locals 1

    sget-object v0, Lp51$a;->$VALUES:[Lp51$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp51$a;

    return-object v0
.end method
