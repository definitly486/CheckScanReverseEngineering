.class public final enum Lyads/xo2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/xo2;

.field public static final enum d:Lyads/xo2;

.field public static final enum e:Lyads/xo2;

.field public static final enum f:Lyads/xo2;

.field public static final enum g:Lyads/xo2;

.field public static final enum h:Lyads/xo2;

.field public static final enum i:Lyads/xo2;

.field public static final enum j:Lyads/xo2;

.field public static final enum k:Lyads/xo2;

.field public static final synthetic l:[Lyads/xo2;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/xo2;

    const/4 v1, 0x0

    const-string v2, "Integer"

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v1, v2}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/xo2;->c:Lyads/xo2;

    new-instance v1, Lyads/xo2;

    const/4 v2, 0x1

    const-string v3, "Number"

    const-string v4, "NUMBER"

    invoke-direct {v1, v4, v2, v3}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/xo2;->d:Lyads/xo2;

    new-instance v2, Lyads/xo2;

    const/4 v3, 0x2

    const-string v4, "Boolean"

    const-string v5, "BOOLEAN"

    invoke-direct {v2, v5, v3, v4}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/xo2;->e:Lyads/xo2;

    new-instance v3, Lyads/xo2;

    const/4 v4, 0x3

    const-string v5, "String"

    const-string v6, "STRING"

    invoke-direct {v3, v6, v4, v5}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/xo2;->f:Lyads/xo2;

    new-instance v4, Lyads/xo2;

    const/4 v5, 0x4

    const-string v6, "DateTime"

    const-string v7, "DATETIME"

    invoke-direct {v4, v7, v5, v6}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/xo2;->g:Lyads/xo2;

    new-instance v5, Lyads/xo2;

    const/4 v6, 0x5

    const-string v7, "Color"

    const-string v8, "COLOR"

    invoke-direct {v5, v8, v6, v7}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/xo2;->h:Lyads/xo2;

    new-instance v6, Lyads/xo2;

    const/4 v7, 0x6

    const-string v8, "Url"

    const-string v9, "URL"

    invoke-direct {v6, v9, v7, v8}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/xo2;->i:Lyads/xo2;

    new-instance v7, Lyads/xo2;

    const/4 v8, 0x7

    const-string v9, "Dict"

    const-string v10, "DICT"

    invoke-direct {v7, v10, v8, v9}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/xo2;->j:Lyads/xo2;

    new-instance v8, Lyads/xo2;

    const/16 v9, 0x8

    const-string v10, "Array"

    const-string v11, "ARRAY"

    invoke-direct {v8, v11, v9, v10}, Lyads/xo2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lyads/xo2;->k:Lyads/xo2;

    filled-new-array/range {v0 .. v8}, [Lyads/xo2;

    move-result-object v0

    sput-object v0, Lyads/xo2;->l:[Lyads/xo2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/xo2;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/xo2;
    .locals 1

    const-class v0, Lyads/xo2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/xo2;

    return-object p0
.end method

.method public static values()[Lyads/xo2;
    .locals 1

    sget-object v0, Lyads/xo2;->l:[Lyads/xo2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/xo2;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/xo2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/xo2;->b:Ljava/lang/String;

    return-object p0
.end method
