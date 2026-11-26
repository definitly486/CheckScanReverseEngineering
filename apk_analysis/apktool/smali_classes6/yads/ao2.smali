.class public final Lyads/ao2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/List;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lyads/ao2;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Lyads/ao2;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/ao2;->f:Z

    return-void
.end method

.method public static final a(Lyads/ao2;Lbm3;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lyads/ao2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lbm3;)Lyads/tp0;
    .locals 2

    .line 70
    iget-object v0, p0, Lyads/ao2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-boolean v0, p0, Lyads/ao2;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/ao2;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lyads/ao2;->f:Z

    .line 76
    :goto_0
    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lwn9;

    invoke-direct {v0, p0, p1}, Lwn9;-><init>(Lyads/ao2;Lbm3;)V

    return-object v0
.end method

.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/ao2;->f:Z

    iget-object v0, p0, Lyads/ao2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lyads/ao2;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/ao2;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/ao2;->f:Z

    :goto_0
    iget-object v0, p0, Lyads/ao2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbm3;

    iget-object v2, p0, Lyads/ao2;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-void
.end method
