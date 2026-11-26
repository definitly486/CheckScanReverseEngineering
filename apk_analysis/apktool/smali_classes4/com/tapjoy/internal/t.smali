.class public final enum Lcom/tapjoy/internal/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/t;

.field public static final enum b:Lcom/tapjoy/internal/t;

.field public static final enum c:Lcom/tapjoy/internal/t;

.field public static final enum d:Lcom/tapjoy/internal/t;

.field public static final synthetic e:[Lcom/tapjoy/internal/t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tapjoy/internal/t;

    const/4 v1, 0x0

    const-string v2, "DAILY"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/t;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    new-instance v1, Lcom/tapjoy/internal/t;

    const/4 v2, 0x1

    const-string v3, "WEEKLY"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/t;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/t;->b:Lcom/tapjoy/internal/t;

    new-instance v2, Lcom/tapjoy/internal/t;

    const/4 v3, 0x2

    const-string v4, "MONTHLY"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/internal/t;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/t;

    new-instance v3, Lcom/tapjoy/internal/t;

    const/4 v4, 0x3

    const-string v5, "YEARLY"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/internal/t;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/t;->d:Lcom/tapjoy/internal/t;

    new-instance v4, Lcom/tapjoy/internal/t;

    const/4 v5, 0x4

    const-string v6, "BEST"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/internal/t;-><init>(ILjava/lang/String;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/tapjoy/internal/t;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/t;->e:[Lcom/tapjoy/internal/t;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/t;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/t;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/t;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/t;->e:[Lcom/tapjoy/internal/t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/t;

    return-object v0
.end method
