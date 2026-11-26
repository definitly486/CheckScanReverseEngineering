.class public abstract Lyads/b53;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/xo2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lyads/u13;-><init>()V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->j:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/b53;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    iput-object v0, p0, Lyads/b53;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lyads/b53;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/b53;->b:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
