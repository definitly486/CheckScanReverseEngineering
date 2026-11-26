.class public final Lyads/dp6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q9;

.field public final b:Lyads/p9;

.field public final c:Lyads/iq6;

.field public d:Lyads/cp6;

.field public e:Lyads/s9;

.field public f:Z

.field public g:Z

.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lyads/p9;Lyads/q9;)V
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lyads/iq6;

    invoke-direct {v1}, Lyads/iq6;-><init>()V

    iput-object v1, p0, Lyads/dp6;->c:Lyads/iq6;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/dp6;->f:Z

    iput-boolean v1, p0, Lyads/dp6;->g:Z

    iput-object p1, p0, Lyads/dp6;->b:Lyads/p9;

    iput-object p2, p0, Lyads/dp6;->a:Lyads/q9;

    iput-object v0, p0, Lyads/dp6;->h:Ljava/lang/String;

    new-instance v1, Lyads/cp6;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lyads/cp6;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lyads/dp6;->d:Lyads/cp6;

    iget-object v1, p2, Lyads/q9;->e:Lyads/r9;

    sget-object v2, Lyads/r9;->c:Lyads/r9;

    if-eq v1, v2, :cond_1

    sget-object v2, Lyads/r9;->e:Lyads/r9;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lyads/jp6;

    iget-object v2, p2, Lyads/q9;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object p2, p2, Lyads/q9;->d:Ljava/lang/String;

    invoke-direct {v1, v0, p2, v2}, Lyads/jp6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    iput-object v1, p0, Lyads/dp6;->e:Lyads/s9;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lyads/yo6;

    invoke-direct {v1, v0}, Lyads/yo6;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Lyads/s9;->b()V

    sget-object p2, Lyads/tp6;->c:Lyads/tp6;

    iget-object p2, p2, Lyads/tp6;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/dp6;->e:Lyads/s9;

    sget-object p2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v0, p0, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object p0, p0, Lyads/s9;->a:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lyads/ur4;->c:Lyads/ur4;

    const-string v3, "impressionOwner"

    invoke-static {v1, v3, v2}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lyads/p9;->a:Lyads/ur4;

    const-string v2, "mediaEventsOwner"

    invoke-static {v1, v2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lyads/y90;->c:Lyads/y90;

    const-string v2, "creativeType"

    invoke-static {v1, v2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lyads/df3;->c:Lyads/df3;

    const-string v2, "impressionType"

    invoke-static {v1, v2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "isolateVerificationScripts"

    invoke-static {v1, v2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "init"

    invoke-virtual {p2, v0, p1, p0}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lyads/dp6;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/dp6;->d:Lyads/cp6;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lyads/dp6;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/dp6;->c:Lyads/iq6;

    iget-object v0, v0, Lyads/iq6;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/dp6;->g:Z

    iget-object v1, p0, Lyads/dp6;->e:Lyads/s9;

    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v3, v1, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iget-object v1, v1, Lyads/s9;->a:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "finishSession"

    invoke-virtual {v2, v3, v4, v1}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lyads/tp6;->c:Lyads/tp6;

    iget-object v2, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object v2, v1, Lyads/tp6;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/a26;->g:Lyads/a26;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/a26;->i:Landroid/os/Handler;

    if-eqz v4, :cond_4

    sget-object v5, Lyads/a26;->k:Lyads/z16;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v2, Lyads/a26;->i:Landroid/os/Handler;

    :cond_4
    iget-object v4, v1, Lyads/a26;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v4, Lyads/a26;->h:Landroid/os/Handler;

    new-instance v5, Lyads/x16;

    invoke-direct {v5, v1}, Lyads/x16;-><init>(Lyads/a26;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lyads/hp6;->d:Lyads/hp6;

    iput-boolean v3, v1, Lyads/xp6;->a:Z

    iput-object v2, v1, Lyads/xp6;->c:Lyads/vp6;

    iget-object v0, v0, Lyads/oq6;->c:Lyads/aq6;

    iget-object v1, v0, Lyads/aq6;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    invoke-virtual {v0}, Lyads/s9;->a()V

    iput-object v2, p0, Lyads/dp6;->e:Lyads/s9;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lyads/dp6;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lyads/dp6;->d:Lyads/cp6;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    new-instance v0, Lyads/cp6;

    invoke-direct {v0, p1}, Lyads/cp6;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lyads/dp6;->d:Lyads/cp6;

    .line 153
    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 156
    iput-wide v1, v0, Lyads/s9;->f:J

    const/4 v1, 0x1

    iput v1, v0, Lyads/s9;->e:I

    .line 157
    sget-object v0, Lyads/tp6;->c:Lyads/tp6;

    .line 158
    iget-object v0, v0, Lyads/tp6;->a:Ljava/util/ArrayList;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dp6;

    if-eq v1, p0, :cond_2

    .line 161
    iget-object v2, v1, Lyads/dp6;->d:Lyads/cp6;

    .line 162
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 163
    iget-object v1, v1, Lyads/dp6;->d:Lyads/cp6;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Landroid/view/View;Lyads/l03;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lyads/dp6;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lyads/dp6;->c:Lyads/iq6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_3

    .line 146
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2

    sget-object v0, Lyads/iq6;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "FriendlyObstruction has detailed reason over 50 characters in length"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_3
    :goto_0
    iget-object v0, p0, Lyads/iq6;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/cq6;

    .line 148
    iget-object v2, v1, Lyads/cq6;->a:Lyads/cp6;

    .line 149
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 150
    iget-object p0, p0, Lyads/iq6;->a:Ljava/util/ArrayList;

    new-instance v0, Lyads/cq6;

    invoke-direct {v0, p1, p2, p3}, Lyads/cq6;-><init>(Landroid/view/View;Lyads/l03;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lyads/dp6;->f:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/dp6;->f:Z

    sget-object v1, Lyads/tp6;->c:Lyads/tp6;

    iget-object v2, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/hp6;->d:Lyads/hp6;

    iput-object v1, v2, Lyads/xp6;->c:Lyads/vp6;

    invoke-virtual {v2}, Lyads/xp6;->b()V

    sget-object v2, Lyads/a26;->g:Lyads/a26;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/a26;->i:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lyads/a26;->i:Landroid/os/Handler;

    sget-object v3, Lyads/a26;->j:Lyads/y16;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lyads/a26;->i:Landroid/os/Handler;

    sget-object v3, Lyads/a26;->k:Lyads/z16;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v1, v1, Lyads/oq6;->c:Lyads/aq6;

    iget-object v2, v1, Lyads/aq6;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lyads/wp6;

    invoke-direct {v3, v1}, Lyads/wp6;-><init>(Lyads/aq6;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v2, v1, Lyads/aq6;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object v0

    iget v0, v0, Lyads/oq6;->a:F

    iget-object v1, p0, Lyads/dp6;->e:Lyads/s9;

    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v3, v1, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iget-object v1, v1, Lyads/s9;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setDeviceVolume"

    invoke-virtual {v2, v3, v1, v0}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    sget-object v1, Lyads/xo6;->e:Lyads/xo6;

    iget-object v1, v1, Lyads/xo6;->a:Ljava/util/Date;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "timestamp"

    invoke-static {v3, v4, v1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setLastActivity"

    invoke-virtual {v2, v0, v3, v1}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lyads/dp6;->e:Lyads/s9;

    iget-object v1, p0, Lyads/dp6;->a:Lyads/q9;

    invoke-virtual {v0, p0, v1}, Lyads/s9;->a(Lyads/dp6;Lyads/q9;)V

    :cond_6
    :goto_3
    return-void
.end method
