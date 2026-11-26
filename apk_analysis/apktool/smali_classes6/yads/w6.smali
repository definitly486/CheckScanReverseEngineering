.class public final enum Lyads/w6;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/w6;

.field public static final synthetic d:[Lyads/w6;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/w6;

    const/4 v1, 0x0

    const-string v2, "automatic"

    const-string v3, "AUTOMATIC"

    invoke-direct {v0, v3, v1, v2}, Lyads/w6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/w6;

    const/4 v2, 0x1

    const-string v3, "manual"

    const-string v4, "MANUAL"

    invoke-direct {v1, v4, v2, v3}, Lyads/w6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/w6;->c:Lyads/w6;

    filled-new-array {v0, v1}, [Lyads/w6;

    move-result-object v0

    sput-object v0, Lyads/w6;->d:[Lyads/w6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/w6;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/w6;
    .locals 1

    const-class v0, Lyads/w6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/w6;

    return-object p0
.end method

.method public static values()[Lyads/w6;
    .locals 1

    sget-object v0, Lyads/w6;->d:[Lyads/w6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/w6;

    return-object v0
.end method
