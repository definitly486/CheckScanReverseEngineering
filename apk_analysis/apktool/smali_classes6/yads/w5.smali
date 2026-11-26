.class public final enum Lyads/w5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/w5;

.field public static final enum c:Lyads/w5;

.field public static final enum d:Lyads/w5;

.field public static final enum e:Lyads/w5;

.field public static final enum f:Lyads/w5;

.field public static final synthetic g:[Lyads/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/w5;

    const-string v1, "CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/w5;->b:Lyads/w5;

    new-instance v1, Lyads/w5;

    const-string v2, "NOT_STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/w5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/w5;->c:Lyads/w5;

    new-instance v2, Lyads/w5;

    const-string v3, "LOADING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/w5;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/w5;->d:Lyads/w5;

    new-instance v3, Lyads/w5;

    const-string v4, "SUCCESSFULLY_LOADED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/w5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/w5;->e:Lyads/w5;

    new-instance v4, Lyads/w5;

    const-string v5, "ERRONEOUSLY_LOADED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/w5;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lyads/w5;->f:Lyads/w5;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/w5;

    move-result-object v0

    sput-object v0, Lyads/w5;->g:[Lyads/w5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/w5;
    .locals 1

    const-class v0, Lyads/w5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/w5;

    return-object p0
.end method

.method public static values()[Lyads/w5;
    .locals 1

    sget-object v0, Lyads/w5;->g:[Lyads/w5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/w5;

    return-object v0
.end method
