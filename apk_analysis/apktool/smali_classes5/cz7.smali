.class public final enum Lcz7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmn2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz7;",
        ">;",
        "Lmn2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz7;

.field public static final enum CONNECTION_ABORTED:Lcz7;

.field public static final enum CONNECTION_RESET:Lcz7;

.field public static final enum CONNECTION_TIMED_OUT:Lcz7;

.field public static final enum SOCKET_ERROR:Lcz7;

.field public static final enum SUBCHANNEL_SHUTDOWN:Lcz7;

.field public static final enum UNKNOWN:Lcz7;


# instance fields
.field private final errorTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcz7;

    const/4 v1, 0x0

    const-string v2, "subchannel shutdown"

    const-string v3, "SUBCHANNEL_SHUTDOWN"

    invoke-direct {v0, v3, v1, v2}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcz7;->SUBCHANNEL_SHUTDOWN:Lcz7;

    new-instance v1, Lcz7;

    const/4 v2, 0x1

    const-string v3, "connection reset"

    const-string v4, "CONNECTION_RESET"

    invoke-direct {v1, v4, v2, v3}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcz7;->CONNECTION_RESET:Lcz7;

    new-instance v2, Lcz7;

    const/4 v3, 0x2

    const-string v4, "connection timed out"

    const-string v5, "CONNECTION_TIMED_OUT"

    invoke-direct {v2, v5, v3, v4}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcz7;->CONNECTION_TIMED_OUT:Lcz7;

    new-instance v3, Lcz7;

    const/4 v4, 0x3

    const-string v5, "connection aborted"

    const-string v6, "CONNECTION_ABORTED"

    invoke-direct {v3, v6, v4, v5}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcz7;->CONNECTION_ABORTED:Lcz7;

    new-instance v4, Lcz7;

    const/4 v5, 0x4

    const-string v6, "socket error"

    const-string v7, "SOCKET_ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcz7;->SOCKET_ERROR:Lcz7;

    new-instance v5, Lcz7;

    const/4 v6, 0x5

    const-string v7, "unknown"

    const-string v8, "UNKNOWN"

    invoke-direct {v5, v8, v6, v7}, Lcz7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcz7;->UNKNOWN:Lcz7;

    filled-new-array/range {v0 .. v5}, [Lcz7;

    move-result-object v0

    sput-object v0, Lcz7;->$VALUES:[Lcz7;

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

    iput-object p3, p0, Lcz7;->errorTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz7;
    .locals 1

    const-class v0, Lcz7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz7;

    return-object p0
.end method

.method public static values()[Lcz7;
    .locals 1

    sget-object v0, Lcz7;->$VALUES:[Lcz7;

    invoke-virtual {v0}, [Lcz7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz7;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcz7;->errorTag:Ljava/lang/String;

    return-object p0
.end method
