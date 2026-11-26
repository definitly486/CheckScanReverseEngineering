.class public final enum Lyads/m11;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/l11;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/m11;

.field public static final enum f:Lyads/m11;

.field public static final enum g:Lyads/m11;

.field public static final enum h:Lyads/m11;

.field public static final synthetic i:[Lyads/m11;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/m11;

    const/4 v1, 0x0

    const-string v2, "normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lyads/m11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/m11;->e:Lyads/m11;

    new-instance v1, Lyads/m11;

    const/4 v2, 0x1

    const-string v3, "reverse"

    const-string v4, "REVERSE"

    invoke-direct {v1, v4, v2, v3}, Lyads/m11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/m11;->f:Lyads/m11;

    new-instance v2, Lyads/m11;

    const/4 v3, 0x2

    const-string v4, "alternate"

    const-string v5, "ALTERNATE"

    invoke-direct {v2, v5, v3, v4}, Lyads/m11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/m11;->g:Lyads/m11;

    new-instance v3, Lyads/m11;

    const/4 v4, 0x3

    const-string v5, "alternate_reverse"

    const-string v6, "ALTERNATE_REVERSE"

    invoke-direct {v3, v6, v4, v5}, Lyads/m11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/m11;->h:Lyads/m11;

    filled-new-array {v0, v1, v2, v3}, [Lyads/m11;

    move-result-object v0

    sput-object v0, Lyads/m11;->i:[Lyads/m11;

    new-instance v0, Lyads/l11;

    invoke-direct {v0}, Lyads/l11;-><init>()V

    sput-object v0, Lyads/m11;->c:Lyads/l11;

    new-instance v0, Lwu2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lwu2;-><init>(I)V

    sput-object v0, Lyads/m11;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/m11;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/m11;
    .locals 2

    sget-object v0, Lyads/m11;->c:Lyads/l11;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/m11;->e:Lyads/m11;

    const-string v1, "normal"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/m11;->f:Lyads/m11;

    const-string v1, "reverse"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/m11;->g:Lyads/m11;

    const-string v1, "alternate"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/m11;->h:Lyads/m11;

    const-string v1, "alternate_reverse"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/m11;
    .locals 1

    const-class v0, Lyads/m11;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/m11;

    return-object p0
.end method

.method public static values()[Lyads/m11;
    .locals 1

    sget-object v0, Lyads/m11;->i:[Lyads/m11;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/m11;

    return-object v0
.end method
