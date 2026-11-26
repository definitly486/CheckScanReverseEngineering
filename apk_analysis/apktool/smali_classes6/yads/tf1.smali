.class public final enum Lyads/tf1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/sf1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/tf1;

.field public static final enum f:Lyads/tf1;

.field public static final enum g:Lyads/tf1;

.field public static final enum h:Lyads/tf1;

.field public static final synthetic i:[Lyads/tf1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/tf1;

    const/4 v1, 0x0

    const-string v2, "light"

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lyads/tf1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/tf1;->e:Lyads/tf1;

    new-instance v1, Lyads/tf1;

    const/4 v2, 0x1

    const-string v3, "medium"

    const-string v4, "MEDIUM"

    invoke-direct {v1, v4, v2, v3}, Lyads/tf1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/tf1;->f:Lyads/tf1;

    new-instance v2, Lyads/tf1;

    const/4 v3, 0x2

    const-string v4, "regular"

    const-string v5, "REGULAR"

    invoke-direct {v2, v5, v3, v4}, Lyads/tf1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/tf1;->g:Lyads/tf1;

    new-instance v3, Lyads/tf1;

    const/4 v4, 0x3

    const-string v5, "bold"

    const-string v6, "BOLD"

    invoke-direct {v3, v6, v4, v5}, Lyads/tf1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/tf1;->h:Lyads/tf1;

    filled-new-array {v0, v1, v2, v3}, [Lyads/tf1;

    move-result-object v0

    sput-object v0, Lyads/tf1;->i:[Lyads/tf1;

    new-instance v0, Lyads/sf1;

    invoke-direct {v0}, Lyads/sf1;-><init>()V

    sput-object v0, Lyads/tf1;->c:Lyads/sf1;

    new-instance v0, Lqy2;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lqy2;-><init>(I)V

    sput-object v0, Lyads/tf1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/tf1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/tf1;
    .locals 2

    sget-object v0, Lyads/tf1;->c:Lyads/sf1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/tf1;->e:Lyads/tf1;

    const-string v1, "light"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/tf1;->f:Lyads/tf1;

    const-string v1, "medium"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/tf1;->g:Lyads/tf1;

    const-string v1, "regular"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/tf1;->h:Lyads/tf1;

    const-string v1, "bold"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/tf1;
    .locals 1

    const-class v0, Lyads/tf1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/tf1;

    return-object p0
.end method

.method public static values()[Lyads/tf1;
    .locals 1

    sget-object v0, Lyads/tf1;->i:[Lyads/tf1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/tf1;

    return-object v0
.end method
