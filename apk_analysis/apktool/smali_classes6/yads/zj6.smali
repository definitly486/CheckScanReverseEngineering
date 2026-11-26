.class public final enum Lyads/zj6;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/yj6;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final enum e:Lyads/zj6;

.field public static final synthetic f:[Lyads/zj6;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/zj6;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lyads/zj6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/zj6;->e:Lyads/zj6;

    new-instance v1, Lyads/zj6;

    const/4 v2, 0x1

    const-string v3, "cache_else_network"

    const-string v4, "CACHE_ELSE_NETWORK"

    invoke-direct {v1, v4, v2, v3}, Lyads/zj6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/zj6;

    const/4 v3, 0x2

    const-string v4, "cache_only"

    const-string v5, "CACHE_ONLY"

    invoke-direct {v2, v5, v3, v4}, Lyads/zj6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/zj6;

    const/4 v4, 0x3

    const-string v5, "disabled"

    const-string v6, "DISABLED"

    invoke-direct {v3, v6, v4, v5}, Lyads/zj6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v0, v1, v2, v3}, [Lyads/zj6;

    move-result-object v0

    sput-object v0, Lyads/zj6;->f:[Lyads/zj6;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    new-instance v0, Lyads/yj6;

    invoke-direct {v0}, Lyads/yj6;-><init>()V

    sput-object v0, Lyads/zj6;->c:Lyads/yj6;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lm05;->b(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/zj6;

    iget-object v3, v3, Lyads/zj6;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lyads/zj6;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/zj6;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/zj6;
    .locals 1

    const-class v0, Lyads/zj6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/zj6;

    return-object p0
.end method

.method public static values()[Lyads/zj6;
    .locals 1

    sget-object v0, Lyads/zj6;->f:[Lyads/zj6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/zj6;

    return-object v0
.end method
