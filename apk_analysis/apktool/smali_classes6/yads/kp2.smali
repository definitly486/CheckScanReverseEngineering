.class public final enum Lyads/kp2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/kp2;

.field public static final enum c:Lyads/kp2;

.field public static final synthetic d:[Lyads/kp2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/kp2;

    const-string v1, "FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/kp2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/kp2;->b:Lyads/kp2;

    new-instance v1, Lyads/kp2;

    const-string v2, "TRACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/kp2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/kp2;->c:Lyads/kp2;

    filled-new-array {v0, v1}, [Lyads/kp2;

    move-result-object v0

    sput-object v0, Lyads/kp2;->d:[Lyads/kp2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/kp2;
    .locals 1

    const-class v0, Lyads/kp2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/kp2;

    return-object p0
.end method

.method public static values()[Lyads/kp2;
    .locals 1

    sget-object v0, Lyads/kp2;->d:[Lyads/kp2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/kp2;

    return-object v0
.end method
