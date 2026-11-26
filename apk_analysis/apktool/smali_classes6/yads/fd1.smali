.class public final enum Lyads/fd1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/ed1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/fd1;

.field public static final enum f:Lyads/fd1;

.field public static final enum g:Lyads/fd1;

.field public static final enum h:Lyads/fd1;

.field public static final enum i:Lyads/fd1;

.field public static final enum j:Lyads/fd1;

.field public static final enum k:Lyads/fd1;

.field public static final enum l:Lyads/fd1;

.field public static final enum m:Lyads/fd1;

.field public static final synthetic n:[Lyads/fd1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/fd1;

    const/4 v1, 0x0

    const-string v2, "string"

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/fd1;->e:Lyads/fd1;

    new-instance v1, Lyads/fd1;

    const/4 v2, 0x1

    const-string v3, "integer"

    const-string v4, "INTEGER"

    invoke-direct {v1, v4, v2, v3}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/fd1;->f:Lyads/fd1;

    new-instance v2, Lyads/fd1;

    const/4 v3, 0x2

    const-string v4, "number"

    const-string v5, "NUMBER"

    invoke-direct {v2, v5, v3, v4}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/fd1;->g:Lyads/fd1;

    new-instance v3, Lyads/fd1;

    const/4 v4, 0x3

    const-string v5, "boolean"

    const-string v6, "BOOLEAN"

    invoke-direct {v3, v6, v4, v5}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/fd1;->h:Lyads/fd1;

    new-instance v4, Lyads/fd1;

    const/4 v5, 0x4

    const-string v6, "datetime"

    const-string v7, "DATETIME"

    invoke-direct {v4, v7, v5, v6}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/fd1;->i:Lyads/fd1;

    new-instance v5, Lyads/fd1;

    const/4 v6, 0x5

    const-string v7, "color"

    const-string v8, "COLOR"

    invoke-direct {v5, v8, v6, v7}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/fd1;->j:Lyads/fd1;

    new-instance v6, Lyads/fd1;

    const/4 v7, 0x6

    const-string v8, "url"

    const-string v9, "URL"

    invoke-direct {v6, v9, v7, v8}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/fd1;->k:Lyads/fd1;

    new-instance v7, Lyads/fd1;

    const/4 v8, 0x7

    const-string v9, "dict"

    const-string v10, "DICT"

    invoke-direct {v7, v10, v8, v9}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/fd1;->l:Lyads/fd1;

    new-instance v8, Lyads/fd1;

    const/16 v9, 0x8

    const-string v10, "array"

    const-string v11, "ARRAY"

    invoke-direct {v8, v11, v9, v10}, Lyads/fd1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lyads/fd1;->m:Lyads/fd1;

    filled-new-array/range {v0 .. v8}, [Lyads/fd1;

    move-result-object v0

    sput-object v0, Lyads/fd1;->n:[Lyads/fd1;

    new-instance v0, Lyads/ed1;

    invoke-direct {v0}, Lyads/ed1;-><init>()V

    sput-object v0, Lyads/fd1;->c:Lyads/ed1;

    new-instance v0, Luu2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Luu2;-><init>(I)V

    sput-object v0, Lyads/fd1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/fd1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/fd1;
    .locals 2

    sget-object v0, Lyads/fd1;->c:Lyads/ed1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/fd1;->e:Lyads/fd1;

    const-string v1, "string"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/fd1;->f:Lyads/fd1;

    const-string v1, "integer"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/fd1;->g:Lyads/fd1;

    const-string v1, "number"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/fd1;->h:Lyads/fd1;

    const-string v1, "boolean"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/fd1;->i:Lyads/fd1;

    const-string v1, "datetime"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lyads/fd1;->j:Lyads/fd1;

    const-string v1, "color"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lyads/fd1;->k:Lyads/fd1;

    const-string v1, "url"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    sget-object v0, Lyads/fd1;->l:Lyads/fd1;

    const-string v1, "dict"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    sget-object v0, Lyads/fd1;->m:Lyads/fd1;

    const-string v1, "array"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/fd1;
    .locals 1

    const-class v0, Lyads/fd1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/fd1;

    return-object p0
.end method

.method public static values()[Lyads/fd1;
    .locals 1

    sget-object v0, Lyads/fd1;->n:[Lyads/fd1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/fd1;

    return-object v0
.end method
