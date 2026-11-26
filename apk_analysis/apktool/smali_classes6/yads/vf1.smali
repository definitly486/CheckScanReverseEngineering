.class public final Lyads/vf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lyads/fd1;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lyads/fd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vf1;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/vf1;->b:Ljava/lang/String;

    iput-object p3, p0, Lyads/vf1;->c:Ljava/lang/String;

    iput-object p4, p0, Lyads/vf1;->d:Lyads/fd1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vf1;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/vf1;->a:Ljava/util/List;

    iget-object v2, p1, Lyads/vf1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/wf1;

    check-cast v4, Lyads/wf1;

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lyads/wf1;->a:Ljava/lang/String;

    iget-object v7, v3, Lyads/wf1;->a:Ljava/lang/String;

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, v4, Lyads/wf1;->b:Lyads/fd1;

    iget-object v3, v3, Lyads/wf1;->b:Lyads/fd1;

    if-ne v4, v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    iget-object v1, p0, Lyads/vf1;->b:Ljava/lang/String;

    iget-object v2, p1, Lyads/vf1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/vf1;->c:Ljava/lang/String;

    iget-object v2, p1, Lyads/vf1;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lyads/vf1;->d:Lyads/fd1;

    iget-object p1, p1, Lyads/vf1;->d:Lyads/fd1;

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method
