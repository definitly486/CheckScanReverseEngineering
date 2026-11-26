.class public final Lyads/ba5;
.super Lyads/d13;
.source "SourceFile"


# instance fields
.field public final m:Lyads/t25;

.field public final n:Lyads/qd5;

.field public final o:Lyads/ua5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/o03;)V
    .locals 9

    new-instance v0, Lyads/t25;

    invoke-direct {v0}, Lyads/t25;-><init>()V

    new-instance v1, Lyads/xh4;

    invoke-direct {v1}, Lyads/xh4;-><init>()V

    new-instance v1, Lyads/qd5;

    invoke-direct {v1, p3, p4}, Lyads/qd5;-><init>(Lyads/e4;Lyads/bf5;)V

    new-instance v8, Lyads/l5;

    invoke-direct {v8}, Lyads/l5;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lyads/d13;-><init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/o03;Lyads/l5;)V

    iput-object v0, v2, Lyads/ba5;->m:Lyads/t25;

    iput-object v1, v2, Lyads/ba5;->n:Lyads/qd5;

    const/4 p0, 0x0

    if-eqz v4, :cond_1

    iget-object p1, v4, Lyads/d9;->r:Lyads/t95;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lyads/t95;->b:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lyads/t95;->d:Lyads/aj5;

    if-eqz p1, :cond_1

    new-instance p0, Lyads/yi5;

    invoke-direct {p0, v3, v5, v6, p1}, Lyads/yi5;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/aj5;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lyads/t95;->c:Lyads/r00;

    if-eqz p1, :cond_1

    new-instance p0, Lyads/p00;

    invoke-direct {p0, p1, v0}, Lyads/p00;-><init>(Lyads/r00;Lyads/t25;)V

    :cond_1
    :goto_0
    iput-object p0, v2, Lyads/ba5;->o:Lyads/ua5;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lyads/ba5;->g()V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lyads/d13;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final e()Lyads/d13;
    .locals 0

    return-object p0
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, Lyads/ba5;->n:Lyads/qd5;

    iget-object v1, p0, Lyads/bp;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/bp;->b:Lyads/d9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/h75;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    if-eqz v2, :cond_0

    iget-object v4, v2, Lyads/d9;->r:Lyads/t95;

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Lyads/t95;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "rewarding_side"

    if-eqz v4, :cond_1

    const-string v4, "server_side"

    invoke-static {v6, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "client_side"

    invoke-static {v6, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    sget-object v4, Lmx2;->b:Lmx2;

    :goto_0
    const-string v5, "reward_info"

    invoke-virtual {v3, v4, v5}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lyads/e75;->w:Lyads/e75;

    invoke-virtual {v0, v1, v2, v4, v3}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V

    iget-object p0, p0, Lyads/ba5;->o:Lyads/ua5;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lyads/ua5;->a()V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void
.end method
