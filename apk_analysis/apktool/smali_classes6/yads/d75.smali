.class public final enum Lyads/d75;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/d75;

.field public static final enum d:Lyads/d75;

.field public static final enum e:Lyads/d75;

.field public static final synthetic f:[Lyads/d75;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/d75;

    const/4 v1, 0x0

    const-string v2, "custom"

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lyads/d75;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/d75;->c:Lyads/d75;

    new-instance v1, Lyads/d75;

    const/4 v2, 0x1

    const-string v3, "default"

    const-string v4, "DEFAULT"

    invoke-direct {v1, v4, v2, v3}, Lyads/d75;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/d75;->d:Lyads/d75;

    new-instance v2, Lyads/d75;

    const/4 v3, 0x2

    const-string v4, "unknown"

    const-string v5, "UNKNOWN"

    invoke-direct {v2, v5, v3, v4}, Lyads/d75;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/d75;->e:Lyads/d75;

    filled-new-array {v0, v1, v2}, [Lyads/d75;

    move-result-object v0

    sput-object v0, Lyads/d75;->f:[Lyads/d75;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/d75;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/d75;
    .locals 1

    const-class v0, Lyads/d75;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/d75;

    return-object p0
.end method

.method public static values()[Lyads/d75;
    .locals 1

    sget-object v0, Lyads/d75;->f:[Lyads/d75;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/d75;

    return-object v0
.end method
