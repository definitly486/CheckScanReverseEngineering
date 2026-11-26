.class public final enum Lj69;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj69;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj69;

.field public static final enum CONNECT_FAILED:Lj69;

.field public static final enum NOT_SHOWN:Lj69;

.field public static final enum NO_CONTENT:Lj69;

.field public static final enum REQUEST_FAILED:Lj69;

.field public static final enum TIMEOUT:Lj69;

.field public static final enum USER_ID_FAILED:Lj69;


# instance fields
.field private final analyticsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lj69;

    const/4 v1, 0x0

    const-string v2, "connect_failed"

    const-string v3, "CONNECT_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj69;->CONNECT_FAILED:Lj69;

    new-instance v1, Lj69;

    const/4 v2, 0x1

    const-string v3, "timeout"

    const-string v4, "TIMEOUT"

    invoke-direct {v1, v4, v2, v3}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj69;->TIMEOUT:Lj69;

    new-instance v2, Lj69;

    const/4 v3, 0x2

    const-string v4, "user_id_failed"

    const-string v5, "USER_ID_FAILED"

    invoke-direct {v2, v5, v3, v4}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lj69;->USER_ID_FAILED:Lj69;

    new-instance v3, Lj69;

    const/4 v4, 0x3

    const-string v5, "request_failed"

    const-string v6, "REQUEST_FAILED"

    invoke-direct {v3, v6, v4, v5}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lj69;->REQUEST_FAILED:Lj69;

    new-instance v4, Lj69;

    const/4 v5, 0x4

    const-string v6, "no_content"

    const-string v7, "NO_CONTENT"

    invoke-direct {v4, v7, v5, v6}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lj69;->NO_CONTENT:Lj69;

    new-instance v5, Lj69;

    const/4 v6, 0x5

    const-string v7, "not_shown"

    const-string v8, "NOT_SHOWN"

    invoke-direct {v5, v8, v6, v7}, Lj69;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lj69;->NOT_SHOWN:Lj69;

    filled-new-array/range {v0 .. v5}, [Lj69;

    move-result-object v0

    sput-object v0, Lj69;->$VALUES:[Lj69;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj69;->analyticsName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj69;
    .locals 1

    const-class v0, Lj69;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj69;

    return-object p0
.end method

.method public static values()[Lj69;
    .locals 1

    sget-object v0, Lj69;->$VALUES:[Lj69;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj69;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj69;->analyticsName:Ljava/lang/String;

    return-object p0
.end method
