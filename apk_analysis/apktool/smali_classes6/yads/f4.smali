.class public final Lyads/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dp6;


# direct methods
.method public constructor <init>(Lyads/dp6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/f4;->a:Lyads/dp6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lyads/f4;->a:Lyads/dp6;

    .line 97
    iget-boolean v1, v0, Lyads/dp6;->g:Z

    if-nez v1, :cond_3

    .line 98
    iget-object v0, v0, Lyads/dp6;->b:Lyads/p9;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    iget-object v0, p0, Lyads/f4;->a:Lyads/dp6;

    .line 101
    iget-boolean v1, v0, Lyads/dp6;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lyads/dp6;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lyads/dp6;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lyads/f4;->a:Lyads/dp6;

    .line 103
    iget-boolean v0, p0, Lyads/dp6;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lyads/dp6;->g:Z

    if-nez v0, :cond_2

    .line 104
    iget-boolean v0, p0, Lyads/dp6;->i:Z

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    .line 106
    sget-object v1, Lyads/nq6;->a:Lyads/nq6;

    .line 107
    iget-object v2, v0, Lyads/s9;->b:Lyads/np6;

    .line 108
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 109
    iget-object v0, v0, Lyads/s9;->a:Ljava/lang/String;

    .line 110
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "publishImpressionEvent"

    invoke-virtual {v1, v2, v3, v0}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lyads/dp6;->i:Z

    goto :goto_1

    .line 112
    :cond_1
    const-string p0, "Impression event can only be sent once"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 113
    :cond_3
    const-string p0, "AdSession is finished"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/f86;)V
    .locals 4

    iget-object v0, p0, Lyads/f4;->a:Lyads/dp6;

    invoke-static {v0}, Lyads/jq6;->a(Lyads/dp6;)V

    iget-object v0, p0, Lyads/f4;->a:Lyads/dp6;

    iget-object v0, v0, Lyads/dp6;->b:Lyads/p9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/f4;->a:Lyads/dp6;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "skippable"

    iget-boolean v3, p1, Lyads/f86;->a:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v2, p1, Lyads/f86;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "skipOffset"

    iget-object v3, p1, Lyads/f86;->b:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "autoPlay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "position"

    iget-object p1, p1, Lyads/f86;->c:Lyads/ox4;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "VastProperties: JSON error"

    const-string v3, "OMIDLIB"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-boolean p1, p0, Lyads/dp6;->j:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lyads/dp6;->e:Lyads/s9;

    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v3, p1, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iget-object p1, p1, Lyads/s9;->a:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "publishLoadedEvent"

    invoke-virtual {v2, v3, v0, p1}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lyads/dp6;->j:Z

    return-void

    :cond_1
    const-string p0, "Loaded event can only be sent once"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
