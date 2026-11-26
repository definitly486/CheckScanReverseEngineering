.class public final enum Lyads/ck1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/bk1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/ck1;

.field public static final enum f:Lyads/ck1;

.field public static final enum g:Lyads/ck1;

.field public static final enum h:Lyads/ck1;

.field public static final enum i:Lyads/ck1;

.field public static final enum j:Lyads/ck1;

.field public static final enum k:Lyads/ck1;

.field public static final synthetic l:[Lyads/ck1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lyads/ck1;

    const/4 v1, 0x0

    const-string v2, "single_line_text"

    const-string v3, "SINGLE_LINE_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/ck1;->e:Lyads/ck1;

    new-instance v1, Lyads/ck1;

    const/4 v2, 0x1

    const-string v3, "multi_line_text"

    const-string v4, "MULTI_LINE_TEXT"

    invoke-direct {v1, v4, v2, v3}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/ck1;->f:Lyads/ck1;

    new-instance v2, Lyads/ck1;

    const/4 v3, 0x2

    const-string v4, "phone"

    const-string v5, "PHONE"

    invoke-direct {v2, v5, v3, v4}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/ck1;->g:Lyads/ck1;

    new-instance v3, Lyads/ck1;

    const/4 v4, 0x3

    const-string v5, "number"

    const-string v6, "NUMBER"

    invoke-direct {v3, v6, v4, v5}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/ck1;->h:Lyads/ck1;

    new-instance v4, Lyads/ck1;

    const/4 v5, 0x4

    const-string v6, "email"

    const-string v7, "EMAIL"

    invoke-direct {v4, v7, v5, v6}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/ck1;->i:Lyads/ck1;

    new-instance v5, Lyads/ck1;

    const/4 v6, 0x5

    const-string v7, "uri"

    const-string v8, "URI"

    invoke-direct {v5, v8, v6, v7}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/ck1;->j:Lyads/ck1;

    new-instance v6, Lyads/ck1;

    const/4 v7, 0x6

    const-string v8, "password"

    const-string v9, "PASSWORD"

    invoke-direct {v6, v9, v7, v8}, Lyads/ck1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/ck1;->k:Lyads/ck1;

    filled-new-array/range {v0 .. v6}, [Lyads/ck1;

    move-result-object v0

    sput-object v0, Lyads/ck1;->l:[Lyads/ck1;

    new-instance v0, Lyads/bk1;

    invoke-direct {v0}, Lyads/bk1;-><init>()V

    sput-object v0, Lyads/ck1;->c:Lyads/bk1;

    new-instance v0, Lxr2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lxr2;-><init>(I)V

    sput-object v0, Lyads/ck1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ck1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/ck1;
    .locals 2

    sget-object v0, Lyads/ck1;->c:Lyads/bk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/ck1;->e:Lyads/ck1;

    const-string v1, "single_line_text"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/ck1;->f:Lyads/ck1;

    const-string v1, "multi_line_text"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/ck1;->g:Lyads/ck1;

    const-string v1, "phone"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/ck1;->h:Lyads/ck1;

    const-string v1, "number"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/ck1;->i:Lyads/ck1;

    const-string v1, "email"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lyads/ck1;->j:Lyads/ck1;

    const-string v1, "uri"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lyads/ck1;->k:Lyads/ck1;

    const-string v1, "password"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ck1;
    .locals 1

    const-class v0, Lyads/ck1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ck1;

    return-object p0
.end method

.method public static values()[Lyads/ck1;
    .locals 1

    sget-object v0, Lyads/ck1;->l:[Lyads/ck1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ck1;

    return-object v0
.end method
