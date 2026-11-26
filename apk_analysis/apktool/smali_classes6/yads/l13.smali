.class public final Lyads/l13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/b13;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/b13;

    invoke-direct {v0}, Lyads/b13;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/l13;->a:Lyads/b13;

    return-void
.end method

.method public static final a(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2

    .line 98
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/n8;)Ljava/lang/String;
    .locals 13

    iget-object p0, p0, Lyads/l13;->a:Lyads/b13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/b13;->a(Lyads/n8;)Lyads/a13;

    move-result-object p0

    iget-object p1, p0, Lyads/a13;->e:Ljava/util/List;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-static {p1}, Lqn1;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    iget-object p1, p0, Lyads/a13;->f:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v11, Loi5;

    const/4 p1, 0x2

    invoke-direct {v11, p1}, Loi5;-><init>(I)V

    const/4 v10, 0x0

    const/16 v12, 0x1e

    const-string v7, ";"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    iget-object v1, p0, Lyads/a13;->a:Ljava/lang/String;

    iget-object v2, p0, Lyads/a13;->b:Ljava/lang/String;

    iget-object v3, p0, Lyads/a13;->c:Ljava/lang/String;

    iget-object v4, p0, Lyads/a13;->d:Ljava/lang/String;

    iget-object v7, p0, Lyads/a13;->g:Lyads/i85;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v1, "_"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
