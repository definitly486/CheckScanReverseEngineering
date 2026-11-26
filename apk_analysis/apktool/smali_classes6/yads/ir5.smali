.class public final enum Lyads/ir5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/hr5;

.field public static final enum d:Lyads/ir5;

.field public static final enum e:Lyads/ir5;

.field public static final enum f:Lyads/ir5;

.field public static final enum g:Lyads/ir5;

.field public static final enum h:Lyads/ir5;

.field public static final enum i:Lyads/ir5;

.field public static final enum j:Lyads/ir5;

.field public static final enum k:Lyads/ir5;

.field public static final synthetic l:[Lyads/ir5;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/ir5;

    const/4 v1, 0x0

    const-string v2, "string"

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/ir5;->d:Lyads/ir5;

    new-instance v1, Lyads/ir5;

    const/4 v2, 0x1

    const-string v3, "integer"

    const-string v4, "INTEGER"

    invoke-direct {v1, v4, v2, v3}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/ir5;->e:Lyads/ir5;

    new-instance v2, Lyads/ir5;

    const/4 v3, 0x2

    const-string v4, "boolean"

    const-string v5, "BOOLEAN"

    invoke-direct {v2, v5, v3, v4}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/ir5;->f:Lyads/ir5;

    new-instance v3, Lyads/ir5;

    const/4 v4, 0x3

    const-string v5, "number"

    const-string v6, "NUMBER"

    invoke-direct {v3, v6, v4, v5}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/ir5;->g:Lyads/ir5;

    new-instance v4, Lyads/ir5;

    const/4 v5, 0x4

    const-string v6, "color"

    const-string v7, "COLOR"

    invoke-direct {v4, v7, v5, v6}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/ir5;->h:Lyads/ir5;

    new-instance v5, Lyads/ir5;

    const/4 v6, 0x5

    const-string v7, "url"

    const-string v8, "URL"

    invoke-direct {v5, v8, v6, v7}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/ir5;->i:Lyads/ir5;

    new-instance v6, Lyads/ir5;

    const/4 v7, 0x6

    const-string v8, "array"

    const-string v9, "ARRAY"

    invoke-direct {v6, v9, v7, v8}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/ir5;->j:Lyads/ir5;

    new-instance v7, Lyads/ir5;

    const/4 v8, 0x7

    const-string v9, "dict"

    const-string v10, "DICT"

    invoke-direct {v7, v10, v8, v9}, Lyads/ir5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/ir5;->k:Lyads/ir5;

    filled-new-array/range {v0 .. v7}, [Lyads/ir5;

    move-result-object v0

    sput-object v0, Lyads/ir5;->l:[Lyads/ir5;

    new-instance v0, Lyads/hr5;

    invoke-direct {v0}, Lyads/hr5;-><init>()V

    sput-object v0, Lyads/ir5;->c:Lyads/hr5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ir5;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ir5;
    .locals 1

    const-class v0, Lyads/ir5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ir5;

    return-object p0
.end method

.method public static values()[Lyads/ir5;
    .locals 1

    sget-object v0, Lyads/ir5;->l:[Lyads/ir5;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ir5;

    return-object v0
.end method
