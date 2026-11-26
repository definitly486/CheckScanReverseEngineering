.class public final Lyads/e34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/l34;

.field public final b:Lyads/p74;


# direct methods
.method public constructor <init>(Lyads/l34;)V
    .locals 1

    new-instance v0, Lyads/p74;

    invoke-direct {v0}, Lyads/p74;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e34;->a:Lyads/l34;

    iput-object v0, p0, Lyads/e34;->b:Lyads/p74;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p2, Lyads/x54;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/e34;->b:Lyads/p74;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/p74;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lyads/xt2;->d:Lyads/xt2;

    invoke-static {p1, v2}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lyads/f55;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/monetization/ads/mediation/base/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    :try_start_1
    const-string p3, "Instantiation failed for %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :catchall_1
    move-exception p3

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p3

    move-object v0, v3

    goto :goto_3

    :cond_2
    const-string v0, "Cast from %s to %s is failed"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x2

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-object v3

    :goto_2
    const-string v1, "could_not_create_adapter"

    invoke-virtual {p0, p1, p2, v1, p3}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    const-string v1, "does_not_conform_to_protocol"

    invoke-virtual {p0, p1, p2, v1, p3}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lyads/x54;Ljava/lang/String;)V
    .locals 6

    .line 112
    new-instance v0, Lb36;

    const-string v1, "reason"

    const-string v2, "could_not_create_adapter"

    invoke-direct {v0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    new-instance v1, Lb36;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    filled-new-array {v0, v1}, [Lb36;

    move-result-object p3

    .line 115
    invoke-static {p3}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v5

    .line 116
    iget-object v0, p0, Lyads/e34;->a:Lyads/l34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    sget-object v2, Lyads/e75;->e:Lyads/e75;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    .line 118
    invoke-virtual/range {v0 .. v5}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/x54;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    new-instance v0, Lb36;

    const-string v1, "reason"

    invoke-direct {v0, v1, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    filled-new-array {v0}, [Lb36;

    move-result-object p3

    invoke-static {p3}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object p3

    .line 121
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unknown error message"

    .line 122
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "description"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p0, p0, Lyads/e34;->a:Lyads/l34;

    invoke-virtual {p0, p1, p2, p3}, Lyads/l34;->a(Landroid/content/Context;Lyads/x54;Ljava/util/Map;)V

    return-void
.end method
