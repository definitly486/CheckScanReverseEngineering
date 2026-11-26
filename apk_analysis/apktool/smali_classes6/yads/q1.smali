.class public final enum Lyads/q1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/q1;

.field public static final enum d:Lyads/q1;

.field public static final enum e:Lyads/q1;

.field public static final synthetic f:[Lyads/q1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/q1;

    const/4 v1, 0x0

    const-string v2, "browser"

    const-string v3, "BROWSER"

    invoke-direct {v0, v3, v1, v2}, Lyads/q1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/q1;->c:Lyads/q1;

    new-instance v1, Lyads/q1;

    const/4 v2, 0x1

    const-string v3, "webview"

    const-string v4, "WEBVIEW"

    invoke-direct {v1, v4, v2, v3}, Lyads/q1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/q1;->d:Lyads/q1;

    new-instance v2, Lyads/q1;

    const/4 v3, 0x2

    const-string v4, "custom"

    const-string v5, "CUSTOM"

    invoke-direct {v2, v5, v3, v4}, Lyads/q1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/q1;->e:Lyads/q1;

    filled-new-array {v0, v1, v2}, [Lyads/q1;

    move-result-object v0

    sput-object v0, Lyads/q1;->f:[Lyads/q1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/q1;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/q1;
    .locals 1

    const-class v0, Lyads/q1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/q1;

    return-object p0
.end method

.method public static values()[Lyads/q1;
    .locals 1

    sget-object v0, Lyads/q1;->f:[Lyads/q1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/q1;

    return-object v0
.end method
