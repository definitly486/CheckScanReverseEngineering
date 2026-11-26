.class public final enum Lcx1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcx1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcx1;

.field public static final enum CONNECTING:Lcx1;

.field public static final enum IDLE:Lcx1;

.field public static final enum READY:Lcx1;

.field public static final enum SHUTDOWN:Lcx1;

.field public static final enum TRANSIENT_FAILURE:Lcx1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcx1;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcx1;->CONNECTING:Lcx1;

    new-instance v1, Lcx1;

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcx1;->READY:Lcx1;

    new-instance v2, Lcx1;

    const-string v3, "TRANSIENT_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    new-instance v3, Lcx1;

    const-string v4, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcx1;->IDLE:Lcx1;

    new-instance v4, Lcx1;

    const-string v5, "SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcx1;->SHUTDOWN:Lcx1;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcx1;

    move-result-object v0

    sput-object v0, Lcx1;->$VALUES:[Lcx1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcx1;
    .locals 1

    const-class v0, Lcx1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcx1;

    return-object p0
.end method

.method public static values()[Lcx1;
    .locals 1

    sget-object v0, Lcx1;->$VALUES:[Lcx1;

    invoke-virtual {v0}, [Lcx1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcx1;

    return-object v0
.end method
