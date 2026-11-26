.class public final Lyads/ol0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zk0;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/HashMap;

.field public e:Lyads/vc0;

.field public f:Lyads/sk0;


# direct methods
.method public constructor <init>(Lyads/zk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ol0;->a:Lyads/zk0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/ol0;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lyads/ol0;->c:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/ol0;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lyads/g14;
    .locals 1

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g14;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lyads/pl0;->a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;
    .locals 0

    invoke-static {p0, p1}, Lyads/pl0;->a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;
    .locals 0

    invoke-static {p0, p1}, Lyads/pl0;->a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lyads/vc0;)Lyads/g14;
    .locals 1

    .line 137
    new-instance v0, Lyads/x15;

    iget-object p0, p0, Lyads/ol0;->a:Lyads/zk0;

    invoke-direct {v0, p1, p0}, Lyads/x15;-><init>(Lyads/vc0;Lyads/zk0;)V

    return-object v0
.end method

.method public final a(I)Lyads/ut5;
    .locals 3

    iget-object v0, p0, Lyads/ol0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/ol0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ut5;

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/ol0;->e:Lyads/vc0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lyads/g14;

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Lp4a;

    invoke-direct {v1, p0, v0}, Lp4a;-><init>(Lyads/ol0;Lyads/vc0;)V

    goto :goto_2

    :cond_2
    const-string v0, "com.monetization.ads.exo.source.rtsp.RtspMediaSource$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lq4a;

    invoke-direct {v1, v0}, Lq4a;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_3
    const-string v2, "com.monetization.ads.exo.source.hls.HlsMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lr4a;

    invoke-direct {v2, v1, v0}, Lr4a;-><init>(Ljava/lang/Class;Lyads/vc0;)V

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_4
    const-string v2, "com.monetization.ads.exo.source.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ls4a;

    invoke-direct {v2, v1, v0}, Ls4a;-><init>(Ljava/lang/Class;Lyads/vc0;)V

    goto :goto_0

    :cond_5
    const-class v2, Lcom/monetization/ads/exo/source/dash/DashMediaSource$Factory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lt4a;

    invoke-direct {v2, v1, v0}, Lt4a;-><init>(Ljava/lang/Class;Lyads/vc0;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lyads/ol0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lyads/ol0;->c:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method
