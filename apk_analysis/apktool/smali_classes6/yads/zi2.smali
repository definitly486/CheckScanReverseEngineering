.class public final Lyads/zi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/bj2;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lyads/fs2;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/bj2;Landroid/view/View;Lyads/vq0;Ljava/lang/String;Lyads/fs2;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lyads/zi2;->b:Lyads/bj2;

    iput-object p2, p0, Lyads/zi2;->c:Landroid/view/View;

    iput-object p3, p0, Lyads/zi2;->d:Lyads/vq0;

    iput-object p4, p0, Lyads/zi2;->e:Ljava/lang/String;

    iput-object p5, p0, Lyads/zi2;->f:Lyads/fs2;

    iput-object p6, p0, Lyads/zi2;->g:Ljava/util/Map;

    iput-object p7, p0, Lyads/zi2;->h:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    iget-object v0, p0, Lyads/zi2;->b:Lyads/bj2;

    invoke-static {v0}, Lyads/bj2;->a(Lyads/bj2;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lyads/zi2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lyads/zi2;->h:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lyads/gc1;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/gc1;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/zi2;->b:Lyads/bj2;

    invoke-static {v0}, Lyads/bj2;->a(Lyads/bj2;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lyads/zi2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/zi2;->b:Lyads/bj2;

    iget-object v0, v0, Lyads/bj2;->j:Lyads/au5;

    iget-object v1, p0, Lyads/zi2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lyads/au5;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lyads/zi2;->d:Lyads/vq0;

    invoke-virtual {v0}, Lyads/vq0;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyads/zi2;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyads/zi2;->b:Lyads/bj2;

    iget-object v0, v0, Lyads/bj2;->b:Lyads/ti2;

    iget-object v1, p0, Lyads/zi2;->d:Lyads/vq0;

    iget-object v2, p0, Lyads/zi2;->f:Lyads/fs2;

    iget-object v3, p0, Lyads/zi2;->c:Landroid/view/View;

    iget-object p0, p0, Lyads/zi2;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v4, 0x0

    new-array v4, v4, [Lyads/r02;

    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lyads/r02;

    invoke-virtual {v0, v1, v2, v3, p0}, Lyads/ti2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;[Lyads/r02;)V

    :cond_4
    return-void
.end method
