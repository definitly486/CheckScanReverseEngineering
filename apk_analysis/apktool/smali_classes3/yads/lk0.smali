.class public final Lyads/lk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lyads/wc0;

.field public d:Lyads/ex2;

.field public e:Lyads/jk;

.field public f:Lyads/h60;

.field public g:Lyads/wc0;

.field public h:Lyads/z36;

.field public i:Lyads/uc0;

.field public j:Lyads/r45;

.field public k:Lyads/wc0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/wc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/lk0;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lyads/lk0;->c:Lyads/wc0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/lk0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 5

    iget-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p1, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lyads/bd0;->a:Landroid/net/Uri;

    sget v4, Lyads/u56;->a:I

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "asset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    if-nez v0, :cond_1

    new-instance v0, Lyads/jk;

    iget-object v1, p0, Lyads/lk0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyads/jk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_1
    iget-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto/16 :goto_3

    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lyads/lk0;->f:Lyads/h60;

    if-nez v0, :cond_3

    new-instance v0, Lyads/h60;

    iget-object v1, p0, Lyads/lk0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyads/h60;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/lk0;->f:Lyads/h60;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_3
    iget-object v0, p0, Lyads/lk0;->f:Lyads/h60;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto/16 :goto_3

    :cond_4
    const-string v3, "rtmp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lyads/lk0;->g:Lyads/wc0;

    if-nez v0, :cond_5

    :try_start_0
    const-string v0, "com.monetization.ads.exo.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/wc0;

    iput-object v0, p0, Lyads/lk0;->g:Lyads/wc0;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error instantiating RTMP extension"

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lyads/lk0;->g:Lyads/wc0;

    if-nez v0, :cond_5

    iget-object v0, p0, Lyads/lk0;->c:Lyads/wc0;

    iput-object v0, p0, Lyads/lk0;->g:Lyads/wc0;

    :cond_5
    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto/16 :goto_3

    :cond_6
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lyads/lk0;->h:Lyads/z36;

    if-nez v0, :cond_7

    new-instance v0, Lyads/z36;

    invoke-direct {v0}, Lyads/z36;-><init>()V

    iput-object v0, p0, Lyads/lk0;->h:Lyads/z36;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_7
    iget-object v0, p0, Lyads/lk0;->h:Lyads/z36;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto/16 :goto_3

    :cond_8
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lyads/lk0;->i:Lyads/uc0;

    if-nez v0, :cond_9

    new-instance v0, Lyads/uc0;

    invoke-direct {v0}, Lyads/uc0;-><init>()V

    iput-object v0, p0, Lyads/lk0;->i:Lyads/uc0;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_9
    iget-object v0, p0, Lyads/lk0;->i:Lyads/uc0;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto :goto_3

    :cond_a
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lyads/lk0;->c:Lyads/wc0;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto :goto_3

    :cond_c
    :goto_1
    iget-object v0, p0, Lyads/lk0;->j:Lyads/r45;

    if-nez v0, :cond_d

    new-instance v0, Lyads/r45;

    iget-object v1, p0, Lyads/lk0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyads/r45;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/lk0;->j:Lyads/r45;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_d
    iget-object v0, p0, Lyads/lk0;->j:Lyads/r45;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto :goto_3

    :cond_e
    :goto_2
    iget-object v0, p1, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    if-nez v0, :cond_f

    new-instance v0, Lyads/jk;

    iget-object v1, p0, Lyads/lk0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyads/jk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_f
    iget-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lyads/lk0;->d:Lyads/ex2;

    if-nez v0, :cond_11

    new-instance v0, Lyads/ex2;

    invoke-direct {v0}, Lyads/ex2;-><init>()V

    iput-object v0, p0, Lyads/lk0;->d:Lyads/ex2;

    invoke-virtual {p0, v0}, Lyads/lk0;->a(Lyads/wc0;)V

    :cond_11
    iget-object v0, p0, Lyads/lk0;->d:Lyads/ex2;

    iput-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    :goto_3
    invoke-interface {v0, p1}, Lyads/wc0;->a(Lyads/bd0;)J

    move-result-wide p0

    return-wide p0

    :cond_12
    invoke-static {}, Lud;->g()V

    return-wide v1
.end method

.method public final a(Lyads/p16;)V
    .locals 1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    iget-object v0, p0, Lyads/lk0;->c:Lyads/wc0;

    invoke-interface {v0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    .line 321
    iget-object v0, p0, Lyads/lk0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lyads/lk0;->d:Lyads/ex2;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lyads/lk0;->e:Lyads/jk;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lyads/lk0;->f:Lyads/h60;

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 328
    :cond_2
    iget-object v0, p0, Lyads/lk0;->g:Lyads/wc0;

    if-eqz v0, :cond_3

    .line 329
    invoke-interface {v0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    .line 330
    :cond_3
    iget-object v0, p0, Lyads/lk0;->h:Lyads/z36;

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 332
    :cond_4
    iget-object v0, p0, Lyads/lk0;->i:Lyads/uc0;

    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 334
    :cond_5
    iget-object p0, p0, Lyads/lk0;->j:Lyads/r45;

    if-eqz p0, :cond_6

    .line 335
    invoke-virtual {p0, p1}, Lyads/dq;->a(Lyads/p16;)V

    :cond_6
    return-void
.end method

.method public final a(Lyads/wc0;)V
    .locals 2

    const/4 v0, 0x0

    .line 336
    :goto_0
    iget-object v1, p0, Lyads/lk0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 337
    iget-object v1, p0, Lyads/lk0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p16;

    invoke-interface {p1, v1}, Lyads/wc0;->a(Lyads/p16;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lyads/lk0;->k:Lyads/wc0;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c([BII)I
    .locals 0

    iget-object p0, p0, Lyads/lk0;->k:Lyads/wc0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p3}, Lyads/tc0;->c([BII)I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lyads/lk0;->k:Lyads/wc0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lyads/wc0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lyads/lk0;->k:Lyads/wc0;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lyads/lk0;->k:Lyads/wc0;

    throw v0

    :cond_0
    return-void
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/lk0;->k:Lyads/wc0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
