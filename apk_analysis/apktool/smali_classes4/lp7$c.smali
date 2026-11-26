.class public final enum Llp7$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llp7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llp7$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llp7$c;

.field public static final enum IDLE:Llp7$c;

.field public static final enum QUEUED:Llp7$c;

.field public static final enum QUEUING:Llp7$c;

.field public static final enum RUNNING:Llp7$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llp7$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llp7$c;->IDLE:Llp7$c;

    new-instance v1, Llp7$c;

    const-string v2, "QUEUING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llp7$c;->QUEUING:Llp7$c;

    new-instance v2, Llp7$c;

    const-string v3, "QUEUED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Llp7$c;->QUEUED:Llp7$c;

    new-instance v3, Llp7$c;

    const-string v4, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llp7$c;->RUNNING:Llp7$c;

    filled-new-array {v0, v1, v2, v3}, [Llp7$c;

    move-result-object v0

    sput-object v0, Llp7$c;->$VALUES:[Llp7$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Llp7$c;
    .locals 1

    const-class v0, Llp7$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llp7$c;

    return-object p0
.end method

.method public static values()[Llp7$c;
    .locals 1

    sget-object v0, Llp7$c;->$VALUES:[Llp7$c;

    invoke-virtual {v0}, [Llp7$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llp7$c;

    return-object v0
.end method
