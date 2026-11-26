.class public final enum Lyads/u06;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/u06;

.field public static final enum d:Lyads/u06;

.field public static final enum e:Lyads/u06;

.field public static final enum f:Lyads/u06;

.field public static final enum g:Lyads/u06;

.field public static final enum h:Lyads/u06;

.field public static final enum i:Lyads/u06;

.field public static final enum j:Lyads/u06;

.field public static final synthetic k:[Lyads/u06;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/u06;

    const/4 v1, 0x0

    const-string v2, "network"

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/u06;->c:Lyads/u06;

    new-instance v1, Lyads/u06;

    const/4 v2, 0x1

    const-string v3, "timeout"

    const-string v4, "TIMEOUT"

    invoke-direct {v1, v4, v2, v3}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/u06;->d:Lyads/u06;

    new-instance v2, Lyads/u06;

    const/4 v3, 0x2

    const-string v4, "server"

    const-string v5, "SERVER"

    invoke-direct {v2, v5, v3, v4}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/u06;->e:Lyads/u06;

    new-instance v3, Lyads/u06;

    const/4 v4, 0x3

    const-string v5, "client"

    const-string v6, "CLIENT"

    invoke-direct {v3, v6, v4, v5}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/u06;->f:Lyads/u06;

    new-instance v4, Lyads/u06;

    const/4 v5, 0x4

    const-string v6, "ssl"

    const-string v7, "SSL"

    invoke-direct {v4, v7, v5, v6}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/u06;->g:Lyads/u06;

    new-instance v5, Lyads/u06;

    const/4 v6, 0x5

    const-string v7, "parse"

    const-string v8, "PARSE"

    invoke-direct {v5, v8, v6, v7}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/u06;->h:Lyads/u06;

    new-instance v6, Lyads/u06;

    const/4 v7, 0x6

    const-string v8, "auth"

    const-string v9, "AUTH"

    invoke-direct {v6, v9, v7, v8}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/u06;->i:Lyads/u06;

    new-instance v7, Lyads/u06;

    const/4 v8, 0x7

    const-string v9, "unknown"

    const-string v10, "UNKNOWN"

    invoke-direct {v7, v10, v8, v9}, Lyads/u06;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/u06;->j:Lyads/u06;

    filled-new-array/range {v0 .. v7}, [Lyads/u06;

    move-result-object v0

    sput-object v0, Lyads/u06;->k:[Lyads/u06;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/u06;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/u06;
    .locals 1

    const-class v0, Lyads/u06;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/u06;

    return-object p0
.end method

.method public static values()[Lyads/u06;
    .locals 1

    sget-object v0, Lyads/u06;->k:[Lyads/u06;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/u06;

    return-object v0
.end method
