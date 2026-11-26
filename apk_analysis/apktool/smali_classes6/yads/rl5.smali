.class public final enum Lyads/rl5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/rl5;

.field public static final enum d:Lyads/rl5;

.field public static final enum e:Lyads/rl5;

.field public static final synthetic f:[Lyads/rl5;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/rl5;

    const/4 v1, 0x0

    const-string v2, "fixed"

    const-string v3, "FIXED"

    invoke-direct {v0, v3, v1, v2}, Lyads/rl5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/rl5;->c:Lyads/rl5;

    new-instance v1, Lyads/rl5;

    const/4 v2, 0x1

    const-string v3, "flexible"

    const-string v4, "FLEXIBLE"

    invoke-direct {v1, v4, v2, v3}, Lyads/rl5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/rl5;->d:Lyads/rl5;

    new-instance v2, Lyads/rl5;

    const/4 v3, 0x2

    const-string v4, "screen"

    const-string v5, "SCREEN"

    invoke-direct {v2, v5, v3, v4}, Lyads/rl5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/rl5;

    const/4 v4, 0x3

    const-string v5, "sticky"

    const-string v6, "STICKY"

    invoke-direct {v3, v6, v4, v5}, Lyads/rl5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/rl5;->e:Lyads/rl5;

    filled-new-array {v0, v1, v2, v3}, [Lyads/rl5;

    move-result-object v0

    sput-object v0, Lyads/rl5;->f:[Lyads/rl5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/rl5;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/rl5;
    .locals 1

    const-class v0, Lyads/rl5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/rl5;

    return-object p0
.end method

.method public static values()[Lyads/rl5;
    .locals 1

    sget-object v0, Lyads/rl5;->f:[Lyads/rl5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/rl5;

    return-object v0
.end method
