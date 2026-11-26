.class public final Lyads/q84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k75;


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Lyads/wg;

.field public final b:Z

.field public final c:Ly22;

.field public final d:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/q84;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/wg;Lcl4;Z)V
    .locals 1

    invoke-static {}, Lyads/k90;->a()Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/q84;->a:Lyads/wg;

    iput-boolean p3, p0, Lyads/q84;->b:Z

    iput-object v0, p0, Lyads/q84;->c:Ly22;

    iput-object p2, p0, Lyads/q84;->d:Lcl4;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lm05;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Laq5;->e([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 63
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lyads/g75;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lyads/q84;->a:Lyads/wg;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lyads/q84;->c:Ly22;

    new-instance v1, Lyads/o84;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lyads/o84;-><init>(Lyads/q84;Lyads/g75;Le02;)V

    const/4 p0, 0x3

    .line 61
    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lyads/q84;->a:Lyads/wg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/q84;->c:Ly22;

    new-instance v1, Lyads/m84;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lyads/m84;-><init>(Lyads/q84;Ljava/util/Map;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lyads/q84;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/q84;->a:Lyads/wg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/q84;->c:Ly22;

    new-instance v1, Lyads/n84;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lyads/n84;-><init>(Lyads/q84;Ljava/lang/String;Ljava/lang/Throwable;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method
