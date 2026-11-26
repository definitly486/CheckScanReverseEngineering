.class public final enum Lyads/ak1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/zj1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/ak1;

.field public static final enum f:Lyads/ak1;

.field public static final enum g:Lyads/ak1;

.field public static final enum h:Lyads/ak1;

.field public static final enum i:Lyads/ak1;

.field public static final synthetic j:[Lyads/ak1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/ak1;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lyads/ak1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/ak1;->e:Lyads/ak1;

    new-instance v1, Lyads/ak1;

    const/4 v2, 0x1

    const-string v3, "go"

    const-string v4, "GO"

    invoke-direct {v1, v4, v2, v3}, Lyads/ak1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/ak1;->f:Lyads/ak1;

    new-instance v2, Lyads/ak1;

    const/4 v3, 0x2

    const-string v4, "search"

    const-string v5, "SEARCH"

    invoke-direct {v2, v5, v3, v4}, Lyads/ak1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/ak1;->g:Lyads/ak1;

    new-instance v3, Lyads/ak1;

    const/4 v4, 0x3

    const-string v5, "send"

    const-string v6, "SEND"

    invoke-direct {v3, v6, v4, v5}, Lyads/ak1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/ak1;->h:Lyads/ak1;

    new-instance v4, Lyads/ak1;

    const/4 v5, 0x4

    const-string v6, "done"

    const-string v7, "DONE"

    invoke-direct {v4, v7, v5, v6}, Lyads/ak1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/ak1;->i:Lyads/ak1;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/ak1;

    move-result-object v0

    sput-object v0, Lyads/ak1;->j:[Lyads/ak1;

    new-instance v0, Lyads/zj1;

    invoke-direct {v0}, Lyads/zj1;-><init>()V

    sput-object v0, Lyads/ak1;->c:Lyads/zj1;

    new-instance v0, Lsi1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsi1;-><init>(I)V

    sput-object v0, Lyads/ak1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ak1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/ak1;
    .locals 2

    sget-object v0, Lyads/ak1;->c:Lyads/zj1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/ak1;->e:Lyads/ak1;

    const-string v1, "default"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/ak1;->f:Lyads/ak1;

    const-string v1, "go"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/ak1;->g:Lyads/ak1;

    const-string v1, "search"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/ak1;->h:Lyads/ak1;

    const-string v1, "send"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/ak1;->i:Lyads/ak1;

    const-string v1, "done"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ak1;
    .locals 1

    const-class v0, Lyads/ak1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ak1;

    return-object p0
.end method

.method public static values()[Lyads/ak1;
    .locals 1

    sget-object v0, Lyads/ak1;->j:[Lyads/ak1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ak1;

    return-object v0
.end method
