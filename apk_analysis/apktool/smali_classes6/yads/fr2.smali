.class public final Lyads/fr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/iw4;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final synthetic d:Lyads/gr2;


# direct methods
.method public constructor <init>(Lyads/gr2;)V
    .locals 0

    iput-object p1, p0, Lyads/fr2;->d:Lyads/gr2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lyads/zv4;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/fr2;->a:Z

    iget-object v0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v0, v0, Lyads/gr2;->g:Lyads/rq2;

    iget-object v0, v0, Lyads/rq2;->b:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    iget-object v0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v0, v0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {v0}, Lyads/eq2;->n()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v1, v1, Lyads/gr2;->c:Lyads/fe6;

    iget-object v2, v1, Lyads/fe6;->b:Lyads/cb6;

    invoke-virtual {v2}, Lyads/cb6;->a()Lyads/h75;

    move-result-object v2

    const-string v3, "error_message"

    invoke-virtual {v2, v0, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyads/g75;

    sget-object v3, Lyads/e75;->c:Lyads/e75;

    iget-object v3, v2, Lyads/h75;->a:Ljava/util/Map;

    iget-object v2, v2, Lyads/h75;->b:Lyads/c;

    const-string v4, "video_ad_player_error"

    invoke-static {v3}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-direct {v0, v4, v3, v2}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object v1, v1, Lyads/fe6;->a:Lyads/q84;

    invoke-virtual {v1, v0}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v0, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object v1, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lyads/gr2;->d:Lyads/tk4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/tk4;->a(Ljava/lang/Throwable;)Lyads/fb6;

    move-result-object p0

    new-instance v1, Lyads/gb6;

    invoke-direct {v1, p0, p1}, Lyads/gb6;-><init>(Lyads/fb6;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lyads/hb6;->a(Lyads/gb6;)V

    :cond_0
    return-void
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lyads/fr2;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v1, p1, Lyads/gr2;->i:Lyads/hb6;

    iget-object p1, p1, Lyads/gr2;->h:Lyads/ol4;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lyads/fr2;->a:Z

    invoke-interface {v1}, Lyads/hb6;->c()V

    return-void

    :cond_0
    iget-boolean p1, p0, Lyads/fr2;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/fr2;->c:Z

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lyads/hb6;->f()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lyads/fr2;->b:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lyads/fr2;->c:Z

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lyads/hb6;->i()V

    :cond_2
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lyads/fr2;->a:Z

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lyads/hb6;->d()V

    return-void

    :cond_1
    iget-object p1, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p1, Lyads/gr2;->g:Lyads/rq2;

    iget-object p1, p1, Lyads/rq2;->b:Lyads/tt4;

    invoke-virtual {p1}, Lyads/tt4;->a()V

    iget-object p1, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object v0, p1, Lyads/gr2;->i:Lyads/hb6;

    iget-object p1, p1, Lyads/gr2;->h:Lyads/ol4;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lyads/hb6;->h()V

    :cond_2
    iget-boolean p1, p0, Lyads/fr2;->b:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lyads/fr2;->b:Z

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lyads/hb6;->a()V

    return-void

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/fr2;->b:Z

    iget-object p0, p0, Lyads/fr2;->d:Lyads/gr2;

    iget-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lyads/hb6;->b()V

    :cond_4
    :goto_0
    return-void
.end method
