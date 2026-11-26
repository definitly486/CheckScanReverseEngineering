.class public final Lyads/uk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ak;

    iget-object v1, v0, Lyads/ak;->c:Ljava/lang/Object;

    iget-object v2, v0, Lyads/ak;->b:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Lyads/rd3;

    if-eqz v3, :cond_1

    check-cast v1, Lyads/rd3;

    invoke-static {v1, p2}, Lyads/td3;->a(Lyads/rd3;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "media"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lyads/v14;

    if-eqz v2, :cond_4

    check-cast v1, Lyads/v14;

    iget-object v2, v1, Lyads/v14;->c:Ljava/util/List;

    if-eqz v2, :cond_4

    if-eqz v2, :cond_2

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rd3;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Lyads/v14;->b:Lyads/r96;

    iget-object v1, v1, Lyads/v14;->a:Lyads/by3;

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    invoke-static {v2, p2}, Lyads/td3;->a(Lyads/rd3;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p0
.end method
