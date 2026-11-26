.class public final enum Lcom/tapjoy/internal/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/a0;

.field public static final enum b:Lcom/tapjoy/internal/a0;

.field public static final enum c:Lcom/tapjoy/internal/a0;

.field public static final enum d:Lcom/tapjoy/internal/a0;

.field public static final enum e:Lcom/tapjoy/internal/a0;

.field public static final enum f:Lcom/tapjoy/internal/a0;

.field public static final enum g:Lcom/tapjoy/internal/a0;

.field public static final enum h:Lcom/tapjoy/internal/a0;

.field public static final synthetic i:[Lcom/tapjoy/internal/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/tapjoy/internal/a0;

    const/4 v1, 0x0

    const-string v2, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    new-instance v1, Lcom/tapjoy/internal/a0;

    const/4 v2, 0x1

    const-string v3, "NONEMPTY_ARRAY"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/a0;->b:Lcom/tapjoy/internal/a0;

    new-instance v2, Lcom/tapjoy/internal/a0;

    const/4 v3, 0x2

    const-string v4, "EMPTY_OBJECT"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/internal/a0;->c:Lcom/tapjoy/internal/a0;

    new-instance v3, Lcom/tapjoy/internal/a0;

    const/4 v4, 0x3

    const-string v5, "DANGLING_NAME"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/a0;->d:Lcom/tapjoy/internal/a0;

    new-instance v4, Lcom/tapjoy/internal/a0;

    const/4 v5, 0x4

    const-string v6, "NONEMPTY_OBJECT"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/internal/a0;->e:Lcom/tapjoy/internal/a0;

    new-instance v5, Lcom/tapjoy/internal/a0;

    const/4 v6, 0x5

    const-string v7, "EMPTY_DOCUMENT"

    invoke-direct {v5, v6, v7}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/internal/a0;->f:Lcom/tapjoy/internal/a0;

    new-instance v6, Lcom/tapjoy/internal/a0;

    const/4 v7, 0x6

    const-string v8, "NONEMPTY_DOCUMENT"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/internal/a0;->g:Lcom/tapjoy/internal/a0;

    new-instance v7, Lcom/tapjoy/internal/a0;

    const/4 v8, 0x7

    const-string v9, "CLOSED"

    invoke-direct {v7, v8, v9}, Lcom/tapjoy/internal/a0;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/tapjoy/internal/a0;->h:Lcom/tapjoy/internal/a0;

    filled-new-array/range {v0 .. v7}, [Lcom/tapjoy/internal/a0;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/a0;->i:[Lcom/tapjoy/internal/a0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/a0;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/a0;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/a0;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/a0;->i:[Lcom/tapjoy/internal/a0;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/a0;

    return-object v0
.end method
