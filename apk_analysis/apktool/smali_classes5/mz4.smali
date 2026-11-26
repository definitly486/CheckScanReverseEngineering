.class public final Lmz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmz4$b;,
        Lmz4$a;
    }
.end annotation


# instance fields
.field public final a:Lmz4$a;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmz4$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmz4$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lk67$y;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz4$a;Ljava/util/HashMap;Ljava/util/HashMap;Lk67$y;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmz4;->a:Lmz4$a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lmz4;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lmz4;->c:Ljava/util/Map;

    iput-object p4, p0, Lmz4;->d:Lk67$y;

    iput-object p5, p0, Lmz4;->e:Ljava/lang/Object;

    if-eqz p6, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lmz4;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/Map;ZIILjava/lang/Object;)Lmz4;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII",
            "Ljava/lang/Object;",
            ")",
            "Lmz4;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    :goto_0
    const/4 v7, 0x0

    goto :goto_3

    :cond_0
    const-string v5, "retryThrottling"

    invoke-static {v5, v0}, Lpl2;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "maxTokens"

    invoke-static {v6, v5}, Lpl2;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    const-string v7, "tokenRatio"

    invoke-static {v7, v5}, Lpl2;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-string v9, "maxToken should be greater than zero"

    invoke-static {v8, v9}, Lo8;->s(ZLjava/lang/Object;)V

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const-string v8, "tokenRatio should be greater than zero"

    invoke-static {v7, v8}, Lo8;->s(ZLjava/lang/Object;)V

    new-instance v7, Lk67$y;

    invoke-direct {v7, v6, v5}, Lk67$y;-><init>(FF)V

    :goto_3
    move-object v12, v7

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_5

    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    const-string v5, "healthCheckConfig"

    invoke-static {v5, v0}, Lpl2;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v14, v5

    :goto_5
    const-string v5, "methodConfig"

    invoke-static {v5, v0}, Lpl2;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    invoke-static {v5}, Lpl2;->a(Ljava/util/List;)V

    :goto_6
    if-nez v5, :cond_7

    new-instance v8, Lmz4;

    const/4 v9, 0x0

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lmz4;-><init>(Lmz4$a;Ljava/util/HashMap;Ljava/util/HashMap;Lk67$y;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v8

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :cond_8
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v7, Lmz4$a;

    move/from16 v8, p2

    move/from16 v13, p3

    invoke-direct {v7, v6, v8, v13, v1}, Lmz4$a;-><init>(Ljava/util/Map;IIZ)V

    const-string v15, "name"

    invoke-static {v15, v6}, Lpl2;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    invoke-static {v6}, Lpl2;->a(Ljava/util/List;)V

    :goto_8
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_7

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v2, "service"

    invoke-static {v2, v15}, Lpl2;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    const-string v3, "method"

    invoke-static {v3, v15}, Lpl2;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Li13;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-static {v3}, Li13;->b(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "missing service name for method %s"

    invoke-static {v2, v15, v3}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_c

    move/from16 v2, v16

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Duplicate default method config in service config %s"

    invoke-static {v2, v3, v0}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    move-object v9, v7

    goto :goto_9

    :cond_d
    invoke-static {v3}, Li13;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v15, "Duplicate service %s"

    invoke-static {v3, v15, v2}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "fullServiceName"

    invoke-static {v2, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "methodName"

    invoke-static {v3, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Duplicate method name %s"

    invoke-static {v3, v4, v2}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    new-instance v8, Lmz4;

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lmz4;-><init>(Lmz4$a;Ljava/util/HashMap;Ljava/util/HashMap;Lk67$y;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v8
.end method


# virtual methods
.method public final b()Lmz4$b;
    .locals 1

    iget-object v0, p0, Lmz4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmz4;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmz4;->a:Lmz4$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lmz4$b;

    invoke-direct {v0, p0}, Lmz4$b;-><init>(Lmz4;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lmz4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lmz4;

    iget-object v2, p0, Lmz4;->a:Lmz4$a;

    iget-object v3, p1, Lmz4;->a:Lmz4$a;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmz4;->b:Ljava/util/Map;

    iget-object v3, p1, Lmz4;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmz4;->c:Ljava/util/Map;

    iget-object v3, p1, Lmz4;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmz4;->d:Lk67$y;

    iget-object v3, p1, Lmz4;->d:Lk67$y;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lmz4;->e:Ljava/lang/Object;

    iget-object p1, p1, Lmz4;->e:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lmz4;->d:Lk67$y;

    iget-object v1, p0, Lmz4;->e:Ljava/lang/Object;

    iget-object v2, p0, Lmz4;->a:Lmz4$a;

    iget-object v3, p0, Lmz4;->b:Ljava/util/Map;

    iget-object p0, p0, Lmz4;->c:Ljava/util/Map;

    filled-new-array {v2, v3, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "defaultMethodConfig"

    iget-object v2, p0, Lmz4;->a:Lmz4$a;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceMethodMap"

    iget-object v2, p0, Lmz4;->b:Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceMap"

    iget-object v2, p0, Lmz4;->c:Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retryThrottling"

    iget-object v2, p0, Lmz4;->d:Lk67$y;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loadBalancingConfig"

    iget-object p0, p0, Lmz4;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
