.class public final enum Lyads/tw5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/tw5;

.field public static final enum c:Lyads/tw5;

.field public static final enum d:Lyads/tw5;

.field public static final synthetic e:[Lyads/tw5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/tw5;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/tw5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/tw5;->b:Lyads/tw5;

    new-instance v1, Lyads/tw5;

    const-string v2, "WORKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/tw5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/tw5;->c:Lyads/tw5;

    new-instance v2, Lyads/tw5;

    const-string v3, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/tw5;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/tw5;->d:Lyads/tw5;

    filled-new-array {v0, v1, v2}, [Lyads/tw5;

    move-result-object v0

    sput-object v0, Lyads/tw5;->e:[Lyads/tw5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/tw5;
    .locals 1

    const-class v0, Lyads/tw5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/tw5;

    return-object p0
.end method

.method public static values()[Lyads/tw5;
    .locals 1

    sget-object v0, Lyads/tw5;->e:[Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/tw5;

    return-object v0
.end method
