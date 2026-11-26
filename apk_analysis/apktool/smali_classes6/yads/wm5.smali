.class public final Lyads/wm5;
.super Lyads/ch4;
.source "SourceFile"


# instance fields
.field public final g:Lyads/mi4;

.field public final h:Lyads/zg5;


# direct methods
.method public constructor <init>(Lyads/mi4;Lyads/ae4;Lyads/zg5;Lyads/d9;)V
    .locals 0

    invoke-direct {p0, p2, p4}, Lyads/ch4;-><init>(Lyads/ae4;Lyads/d9;)V

    iput-object p1, p0, Lyads/wm5;->g:Lyads/mi4;

    iput-object p3, p0, Lyads/wm5;->h:Lyads/zg5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;IZ)Lyads/i66;
    .locals 8

    iget-object v0, p0, Lyads/wm5;->h:Lyads/zg5;

    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/fe5;->p:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lyads/g66;

    invoke-direct {v0}, Lyads/g66;-><init>()V

    :goto_1
    instance-of v2, v0, Lyads/g66;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lyads/wm5;->g:Lyads/mi4;

    iget-object v2, v2, Lyads/mi4;->a:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lyads/ij4;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ij4;

    iget-object v4, v3, Lyads/ij4;->d:Lyads/ch4;

    iget-object v3, v3, Lyads/ij4;->e:Lyads/hm4;

    iget-object v5, p0, Lyads/wm5;->h:Lyads/zg5;

    invoke-virtual {v5, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-boolean v5, v5, Lyads/fe5;->p:Z

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    iget-object v3, v3, Lyads/hm4;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/ck5;

    if-eqz v5, :cond_7

    iget v6, v6, Lyads/ck5;->c:I

    goto :goto_5

    :cond_7
    move v6, p2

    :goto_5
    if-eqz p3, :cond_8

    invoke-virtual {v4, p1, v6, v1}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object v6

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    invoke-virtual {v4, p1, v6, v7}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object v6

    :goto_6
    instance-of v6, v6, Lyads/f66;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_9
    return-object v0

    :cond_a
    :goto_7
    new-instance p0, Lyads/f66;

    sget-object p1, Lyads/e66;->d:Lyads/e66;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_b
    return-object v0
.end method
