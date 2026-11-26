.class public final Lyads/pn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y0;


# instance fields
.field public final a:Lyads/sn0;

.field public final b:Lyads/jo1;

.field public final c:Lyads/k16;

.field public final d:Z


# direct methods
.method public constructor <init>(Lyads/sn0;Lyads/jo1;Lyads/k16;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pn1;->a:Lyads/sn0;

    iput-object p2, p0, Lyads/pn1;->b:Lyads/jo1;

    iput-object p3, p0, Lyads/pn1;->c:Lyads/k16;

    iput-boolean p4, p0, Lyads/pn1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/u0;
    .locals 8

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Native Ad json has not required attributes"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lyads/pn1;->c:Lyads/k16;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "trackingUrls"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "design"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lyads/pn1;->a:Lyads/sn0;

    invoke-virtual {v3, p1}, Lyads/sn0;->a(Lorg/json/JSONObject;)Lyads/mn0;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lyads/pn1;->b:Lyads/jo1;

    iget-boolean p0, p0, Lyads/pn1;->d:Z

    invoke-virtual {v3, p1, p0}, Lyads/jo1;->a(Lyads/mn0;Z)Lyads/fo1;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_3

    new-instance p1, Lyads/nn1;

    invoke-direct {p1, v0, p0, v4}, Lyads/nn1;-><init>(Ljava/lang/String;Lyads/fo1;Ljava/util/ArrayList;)V

    return-object p1

    :cond_3
    invoke-static {v1}, Lqg;->g(Ljava/lang/String;)V

    return-object v2

    :cond_4
    invoke-static {v1}, Lqg;->g(Ljava/lang/String;)V

    return-object v2
.end method
