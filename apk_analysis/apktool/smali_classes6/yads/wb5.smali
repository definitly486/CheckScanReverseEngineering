.class public final Lyads/wb5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/os2;

.field public final b:Lyads/bo2;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lyads/os2;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wb5;->a:Lyads/os2;

    iput-object p2, p0, Lyads/wb5;->b:Lyads/bo2;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lyads/wb5;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/wb5;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a(Lyads/gs2;Lyads/db1;Lyads/ao2;)V
    .locals 7

    invoke-virtual {p0}, Lyads/gs2;->e()Lyads/z66;

    move-result-object v0

    iget-object p1, p1, Lyads/db1;->g:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/uf2;

    invoke-static {v1}, Lyads/xb5;->a(Lyads/uf2;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0, v1, p0, p2}, Lyads/c76;->a(Lyads/z66;Lyads/uf2;Lyads/gs2;Lyads/ao2;)V

    goto :goto_0

    :cond_1
    instance-of v3, v1, Lyads/mf2;

    if-eqz v3, :cond_2

    instance-of v2, v2, Lyads/n66;

    goto :goto_1

    :cond_2
    instance-of v3, v1, Lyads/pf2;

    if-eqz v3, :cond_3

    instance-of v2, v2, Lyads/r66;

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lyads/qf2;

    if-eqz v3, :cond_4

    instance-of v2, v2, Lyads/q66;

    goto :goto_1

    :cond_4
    instance-of v3, v1, Lyads/sf2;

    if-eqz v3, :cond_5

    instance-of v2, v2, Lyads/s66;

    goto :goto_1

    :cond_5
    instance-of v3, v1, Lyads/nf2;

    if-eqz v3, :cond_6

    instance-of v2, v2, Lyads/o66;

    goto :goto_1

    :cond_6
    instance-of v3, v1, Lyads/tf2;

    if-eqz v3, :cond_7

    instance-of v2, v2, Lyads/t66;

    goto :goto_1

    :cond_7
    instance-of v3, v1, Lyads/of2;

    if-eqz v3, :cond_8

    instance-of v2, v2, Lyads/p66;

    goto :goto_1

    :cond_8
    instance-of v3, v1, Lyads/lf2;

    if-eqz v3, :cond_9

    instance-of v2, v2, Lyads/m66;

    goto :goto_1

    :cond_9
    instance-of v2, v1, Lyads/rf2;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lyads/xb5;->a(Lyads/uf2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lyads/xb5;->a(Lyads/uf2;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n                           Variable inconsistency detected!\n                           at DivData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")\n                           at VariableController: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                        "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lna8;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lme0;->e()V

    :cond_b
    return-void
.end method
