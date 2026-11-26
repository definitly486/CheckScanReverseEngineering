.class public final enum Lyads/qj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/qj;

.field public static final enum c:Lyads/qj;

.field public static final enum d:Lyads/qj;

.field public static final enum e:Lyads/qj;

.field public static final synthetic f:[Lyads/qj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/qj;

    const-string v1, "NO_SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/qj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/qj;->b:Lyads/qj;

    new-instance v1, Lyads/qj;

    const-string v2, "FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/qj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/qj;->c:Lyads/qj;

    new-instance v2, Lyads/qj;

    const-string v3, "FILL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/qj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/qj;->d:Lyads/qj;

    new-instance v3, Lyads/qj;

    const-string v4, "STRETCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/qj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/qj;->e:Lyads/qj;

    filled-new-array {v0, v1, v2, v3}, [Lyads/qj;

    move-result-object v0

    sput-object v0, Lyads/qj;->f:[Lyads/qj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/qj;
    .locals 1

    const-class v0, Lyads/qj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/qj;

    return-object p0
.end method

.method public static values()[Lyads/qj;
    .locals 1

    sget-object v0, Lyads/qj;->f:[Lyads/qj;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/qj;

    return-object v0
.end method
