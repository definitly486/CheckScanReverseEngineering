.class public final Lcom/monetization/ads/exo/source/dash/offline/a;
.super Lyads/rb5;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lyads/cw;

.field public final synthetic j:I

.field public final synthetic k:Lyads/o75;


# direct methods
.method public constructor <init>(Lyads/cw;ILyads/o75;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->i:Lyads/cw;

    iput p2, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->j:I

    iput-object p3, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->k:Lyads/o75;

    invoke-direct {p0}, Lyads/rb5;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 9

    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->i:Lyads/cw;

    iget v0, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->j:I

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/offline/a;->k:Lyads/o75;

    iget-object v2, p0, Lyads/o75;->e:Lyads/y35;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lyads/o75;->a:Lyads/vz2;

    iget-object v3, v2, Lyads/vz2;->l:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    const-string v4, "video/webm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "audio/webm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Lyads/mx3;

    invoke-direct {v3, v7}, Lyads/mx3;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v3, Lyads/f03;

    invoke-direct {v3}, Lyads/f03;-><init>()V

    :goto_0
    new-instance v6, Lyads/nv;

    invoke-direct {v6, v3, v0, v2}, Lyads/nv;-><init>(Lyads/ws2;ILyads/vz2;)V

    :try_start_0
    iget-object v0, p0, Lyads/o75;->e:Lyads/y35;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lyads/o75;->e()Lyads/y35;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lyads/o75;->b:Lyads/oe3;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ms;

    iget-object v2, v2, Lyads/ms;->a:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Lyads/y35;->a(Lyads/y35;Ljava/lang/String;)Lyads/y35;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lyads/o75;->b:Lyads/oe3;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ms;

    iget-object v2, v2, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {p0, v2, v0, v7}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v2

    new-instance v0, Lyads/lg3;

    iget-object v3, p0, Lyads/o75;->a:Lyads/vz2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/lg3;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;Lyads/ez;)V

    invoke-virtual {v0}, Lyads/lg3;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    move-object v8, v2

    :goto_1
    iget-object v0, p0, Lyads/o75;->b:Lyads/oe3;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ms;

    iget-object v0, v0, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {p0, v0, v8, v7}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v2

    new-instance v0, Lyads/lg3;

    iget-object v3, p0, Lyads/o75;->a:Lyads/vz2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/lg3;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;Lyads/ez;)V

    invoke-virtual {v0}, Lyads/lg3;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v6}, Lyads/nv;->c()V

    invoke-virtual {v6}, Lyads/nv;->b()Lyads/gz;

    move-result-object p0

    return-object p0

    :goto_3
    invoke-virtual {v6}, Lyads/nv;->c()V

    throw p0
.end method
