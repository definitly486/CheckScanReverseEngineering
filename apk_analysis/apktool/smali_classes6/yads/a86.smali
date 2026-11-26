.class public final Lyads/a86;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/zl6;

.field public final c:Lyads/sn0;

.field public final d:Lyads/jo1;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 3

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/sn0;

    invoke-direct {v1}, Lyads/sn0;-><init>()V

    new-instance v2, Lyads/jo1;

    invoke-direct {v2, p1}, Lyads/jo1;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a86;->a:Lyads/q84;

    iput-object v0, p0, Lyads/a86;->b:Lyads/zl6;

    iput-object v1, p0, Lyads/a86;->c:Lyads/sn0;

    iput-object v2, p0, Lyads/a86;->d:Lyads/jo1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkx6;->n(II)Ly74;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lw74;->b()Lx74;

    move-result-object p1

    :cond_0
    :goto_0
    iget-boolean v2, p1, Lx74;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lx74;->nextInt()I

    move-result v2

    iget-object v3, p0, Lyads/a86;->c:Lyads/sn0;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lyads/sn0;->a(Lorg/json/JSONObject;)Lyads/mn0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/mn0;

    iget-object v2, p0, Lyads/a86;->d:Lyads/jo1;

    invoke-virtual {v2, v1, p2}, Lyads/jo1;->a(Lyads/mn0;Z)Lyads/fo1;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    iget-object p0, p0, Lyads/a86;->a:Lyads/q84;

    const-string p2, "Failed to parse DivKit designs JSON array"

    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method
