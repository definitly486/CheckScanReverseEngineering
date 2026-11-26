.class public final enum Lyads/jc4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/jc4;

.field public static final enum c:Lyads/jc4;

.field public static final synthetic d:[Lyads/jc4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/jc4;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/jc4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/jc4;->b:Lyads/jc4;

    new-instance v1, Lyads/jc4;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/jc4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/jc4;->c:Lyads/jc4;

    filled-new-array {v0, v1}, [Lyads/jc4;

    move-result-object v0

    sput-object v0, Lyads/jc4;->d:[Lyads/jc4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/jc4;
    .locals 1

    const-class v0, Lyads/jc4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/jc4;

    return-object p0
.end method

.method public static values()[Lyads/jc4;
    .locals 1

    sget-object v0, Lyads/jc4;->d:[Lyads/jc4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/jc4;

    return-object v0
.end method
