.class public final enum Lyads/ba;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/ba;

.field public static final enum c:Lyads/ba;

.field public static final enum d:Lyads/ba;

.field public static final synthetic e:[Lyads/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/ba;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/ba;->b:Lyads/ba;

    new-instance v1, Lyads/ba;

    const-string v2, "BLOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/ba;->c:Lyads/ba;

    new-instance v2, Lyads/ba;

    const-string v3, "BLOCK_INNER_CREATIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/ba;->d:Lyads/ba;

    filled-new-array {v0, v1, v2}, [Lyads/ba;

    move-result-object v0

    sput-object v0, Lyads/ba;->e:[Lyads/ba;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ba;
    .locals 1

    const-class v0, Lyads/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ba;

    return-object p0
.end method

.method public static values()[Lyads/ba;
    .locals 1

    sget-object v0, Lyads/ba;->e:[Lyads/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ba;

    return-object v0
.end method
