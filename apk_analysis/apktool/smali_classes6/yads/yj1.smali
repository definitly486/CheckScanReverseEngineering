.class public final enum Lyads/yj1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/xj1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/yj1;

.field public static final enum f:Lyads/yj1;

.field public static final enum g:Lyads/yj1;

.field public static final enum h:Lyads/yj1;

.field public static final enum i:Lyads/yj1;

.field public static final synthetic j:[Lyads/yj1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/yj1;

    const/4 v1, 0x0

    const-string v2, "auto"

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lyads/yj1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/yj1;->e:Lyads/yj1;

    new-instance v1, Lyads/yj1;

    const/4 v2, 0x1

    const-string v3, "none"

    const-string v4, "NONE"

    invoke-direct {v1, v4, v2, v3}, Lyads/yj1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/yj1;->f:Lyads/yj1;

    new-instance v2, Lyads/yj1;

    const/4 v3, 0x2

    const-string v4, "words"

    const-string v5, "WORDS"

    invoke-direct {v2, v5, v3, v4}, Lyads/yj1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/yj1;->g:Lyads/yj1;

    new-instance v3, Lyads/yj1;

    const/4 v4, 0x3

    const-string v5, "sentences"

    const-string v6, "SENTENCES"

    invoke-direct {v3, v6, v4, v5}, Lyads/yj1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/yj1;->h:Lyads/yj1;

    new-instance v4, Lyads/yj1;

    const/4 v5, 0x4

    const-string v6, "all_characters"

    const-string v7, "ALL_CHARACTERS"

    invoke-direct {v4, v7, v5, v6}, Lyads/yj1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/yj1;->i:Lyads/yj1;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/yj1;

    move-result-object v0

    sput-object v0, Lyads/yj1;->j:[Lyads/yj1;

    new-instance v0, Lyads/xj1;

    invoke-direct {v0}, Lyads/xj1;-><init>()V

    sput-object v0, Lyads/yj1;->c:Lyads/xj1;

    new-instance v0, Loy2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loy2;-><init>(I)V

    sput-object v0, Lyads/yj1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/yj1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/yj1;
    .locals 2

    sget-object v0, Lyads/yj1;->c:Lyads/xj1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/yj1;->e:Lyads/yj1;

    const-string v1, "auto"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/yj1;->f:Lyads/yj1;

    const-string v1, "none"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/yj1;->g:Lyads/yj1;

    const-string v1, "words"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/yj1;->h:Lyads/yj1;

    const-string v1, "sentences"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/yj1;->i:Lyads/yj1;

    const-string v1, "all_characters"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/yj1;
    .locals 1

    const-class v0, Lyads/yj1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/yj1;

    return-object p0
.end method

.method public static values()[Lyads/yj1;
    .locals 1

    sget-object v0, Lyads/yj1;->j:[Lyads/yj1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/yj1;

    return-object v0
.end method
