.class public final enum Lyads/ww0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/vw0;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/ww0;

.field public static final enum f:Lyads/ww0;

.field public static final enum g:Lyads/ww0;

.field public static final enum h:Lyads/ww0;

.field public static final enum i:Lyads/ww0;

.field public static final enum j:Lyads/ww0;

.field public static final enum k:Lyads/ww0;

.field public static final synthetic l:[Lyads/ww0;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lyads/ww0;

    const/4 v1, 0x0

    const-string v2, "get"

    const-string v3, "GET"

    invoke-direct {v0, v3, v1, v2}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/ww0;->e:Lyads/ww0;

    new-instance v1, Lyads/ww0;

    const/4 v2, 0x1

    const-string v3, "post"

    const-string v4, "POST"

    invoke-direct {v1, v4, v2, v3}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/ww0;->f:Lyads/ww0;

    new-instance v2, Lyads/ww0;

    const/4 v3, 0x2

    const-string v4, "put"

    const-string v5, "PUT"

    invoke-direct {v2, v5, v3, v4}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/ww0;->g:Lyads/ww0;

    new-instance v3, Lyads/ww0;

    const/4 v4, 0x3

    const-string v5, "patch"

    const-string v6, "PATCH"

    invoke-direct {v3, v6, v4, v5}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/ww0;->h:Lyads/ww0;

    new-instance v4, Lyads/ww0;

    const/4 v5, 0x4

    const-string v6, "delete"

    const-string v7, "DELETE"

    invoke-direct {v4, v7, v5, v6}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/ww0;->i:Lyads/ww0;

    new-instance v5, Lyads/ww0;

    const/4 v6, 0x5

    const-string v7, "head"

    const-string v8, "HEAD"

    invoke-direct {v5, v8, v6, v7}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/ww0;->j:Lyads/ww0;

    new-instance v6, Lyads/ww0;

    const/4 v7, 0x6

    const-string v8, "options"

    const-string v9, "OPTIONS"

    invoke-direct {v6, v9, v7, v8}, Lyads/ww0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/ww0;->k:Lyads/ww0;

    filled-new-array/range {v0 .. v6}, [Lyads/ww0;

    move-result-object v0

    sput-object v0, Lyads/ww0;->l:[Lyads/ww0;

    new-instance v0, Lyads/vw0;

    invoke-direct {v0}, Lyads/vw0;-><init>()V

    sput-object v0, Lyads/ww0;->c:Lyads/vw0;

    new-instance v0, Lcg1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcg1;-><init>(I)V

    sput-object v0, Lyads/ww0;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ww0;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/ww0;
    .locals 2

    sget-object v0, Lyads/ww0;->c:Lyads/vw0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/ww0;->e:Lyads/ww0;

    const-string v1, "get"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/ww0;->f:Lyads/ww0;

    const-string v1, "post"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/ww0;->g:Lyads/ww0;

    const-string v1, "put"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/ww0;->h:Lyads/ww0;

    const-string v1, "patch"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/ww0;->i:Lyads/ww0;

    const-string v1, "delete"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lyads/ww0;->j:Lyads/ww0;

    const-string v1, "head"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lyads/ww0;->k:Lyads/ww0;

    const-string v1, "options"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ww0;
    .locals 1

    const-class v0, Lyads/ww0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ww0;

    return-object p0
.end method

.method public static values()[Lyads/ww0;
    .locals 1

    sget-object v0, Lyads/ww0;->l:[Lyads/ww0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ww0;

    return-object v0
.end method
