.class public final enum Lyads/vj5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lyads/vj5;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/vj5;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/vj5;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lyads/vj5;

    const-string v2, "WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/vj5;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lyads/vj5;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/vj5;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lyads/vj5;

    const-string v4, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/vj5;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lyads/vj5;

    const-string v5, "VERBOSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/vj5;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/vj5;

    move-result-object v0

    sput-object v0, Lyads/vj5;->b:[Lyads/vj5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/vj5;
    .locals 1

    const-class v0, Lyads/vj5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/vj5;

    return-object p0
.end method

.method public static values()[Lyads/vj5;
    .locals 1

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/vj5;

    return-object v0
.end method
