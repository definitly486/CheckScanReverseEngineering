.class public final enum Lvt6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvt6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvt6;

.field public static final enum New:Lvt6;

.field public static final enum Reject:Lvt6;

.field public static final enum ScreenshotSend:Lvt6;

.field public static final enum Send:Lvt6;

.field public static final enum ShowLate:Lvt6;

.field public static final enum WaitSending:Lvt6;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lvt6;

    const-string v1, "New"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvt6;->New:Lvt6;

    new-instance v1, Lvt6;

    const-string v2, "WaitSending"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvt6;->WaitSending:Lvt6;

    new-instance v2, Lvt6;

    const-string v3, "Reject"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lvt6;->Reject:Lvt6;

    new-instance v3, Lvt6;

    const-string v4, "ShowLate"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvt6;->ShowLate:Lvt6;

    new-instance v4, Lvt6;

    const-string v5, "Send"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lvt6;->Send:Lvt6;

    new-instance v5, Lvt6;

    const-string v6, "ScreenshotSend"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lvt6;->ScreenshotSend:Lvt6;

    filled-new-array/range {v0 .. v5}, [Lvt6;

    move-result-object v0

    sput-object v0, Lvt6;->$VALUES:[Lvt6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvt6;
    .locals 1

    const-class v0, Lvt6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvt6;

    return-object p0
.end method

.method public static values()[Lvt6;
    .locals 1

    sget-object v0, Lvt6;->$VALUES:[Lvt6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvt6;

    return-object v0
.end method
