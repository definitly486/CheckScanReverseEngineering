.class public final enum Lyads/t94;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/t94;

.field public static final enum c:Lyads/t94;

.field public static final enum d:Lyads/t94;

.field public static final synthetic e:[Lyads/t94;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/t94;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/t94;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lyads/t94;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/t94;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lyads/t94;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/t94;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/t94;->b:Lyads/t94;

    new-instance v3, Lyads/t94;

    const-string v4, "WARNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/t94;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/t94;->c:Lyads/t94;

    new-instance v4, Lyads/t94;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/t94;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lyads/t94;->d:Lyads/t94;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/t94;

    move-result-object v0

    sput-object v0, Lyads/t94;->e:[Lyads/t94;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/t94;
    .locals 1

    const-class v0, Lyads/t94;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/t94;

    return-object p0
.end method

.method public static values()[Lyads/t94;
    .locals 1

    sget-object v0, Lyads/t94;->e:[Lyads/t94;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/t94;

    return-object v0
.end method
