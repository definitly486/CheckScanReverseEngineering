.class public final enum Lyads/s35;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/s35;

.field public static final enum c:Lyads/s35;

.field public static final enum d:Lyads/s35;

.field public static final enum e:Lyads/s35;

.field public static final synthetic f:[Lyads/s35;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/s35;

    const-string v1, "NEAREST_CORNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/s35;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/s35;->b:Lyads/s35;

    new-instance v1, Lyads/s35;

    const-string v2, "FARTHEST_CORNER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/s35;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/s35;->c:Lyads/s35;

    new-instance v2, Lyads/s35;

    const-string v3, "NEAREST_SIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/s35;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/s35;->d:Lyads/s35;

    new-instance v3, Lyads/s35;

    const-string v4, "FARTHEST_SIDE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/s35;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/s35;->e:Lyads/s35;

    filled-new-array {v0, v1, v2, v3}, [Lyads/s35;

    move-result-object v0

    sput-object v0, Lyads/s35;->f:[Lyads/s35;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/s35;
    .locals 1

    const-class v0, Lyads/s35;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/s35;

    return-object p0
.end method

.method public static values()[Lyads/s35;
    .locals 1

    sget-object v0, Lyads/s35;->f:[Lyads/s35;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/s35;

    return-object v0
.end method
