.class public final Lpg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final a:Lzk1;

.field public final b:Lze7;

.field public final c:Lsk;


# direct methods
.method public constructor <init>(Lzk1;Lze7;Lsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg4;->a:Lzk1;

    iput-object p2, p0, Lpg4;->b:Lze7;

    iput-object p3, p0, Lpg4;->c:Lsk;

    return-void
.end method


# virtual methods
.method public final create(Lne4;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljj;

    iget-object v1, p0, Lpg4;->c:Lsk;

    invoke-direct {v0, v1, p2}, Ljj;-><init>(Lsk;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    iget-object p2, p0, Lpg4;->b:Lze7;

    iget-object v1, p2, Lze7;->e:Lhg4;

    iget-object v2, v1, Lhg4;->f:Ljx0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lng4;->VIEWMODEL_SCOPE_FACTORY:Lng4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Ljx0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object p0, p0, Lpg4;->a:Lzk1;

    if-nez v2, :cond_1

    invoke-virtual {p2, p0, v0, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lne4;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lw39;

    invoke-direct {v6, p1}, Lw39;-><init>(Lne4;)V

    sget-object v8, Lee9;->a:Lw39;

    iget-object p1, v1, Lhg4;->c:Lbf7;

    iget-object v2, p1, Lbf7;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p1, Lbf7;->a:Lhg4;

    iget-object v4, v9, Lhg4;->a:Llx2;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "| (+) Scope - id:\'"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' q:\'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x27

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Luo4;->DEBUG:Luo4;

    invoke-virtual {v4, v10, v5}, Llx2;->a(Luo4;Ljava/lang/String;)V

    iget-object v5, p1, Lbf7;->b:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "| Scope \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "\' not defined. Creating it ..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Llx2;->a(Luo4;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v5, Lze7;

    const/4 v10, 0x4

    invoke-direct/range {v5 .. v10}, Lze7;-><init>(Lkv6;Ljava/lang/String;Lw39;Lhg4;I)V

    iget-object p1, p1, Lbf7;->d:Lze7;

    filled-new-array {p1}, [Lze7;

    move-result-object p1

    const-string v4, "Can\'t add scope link to a root scope"

    iget-boolean v6, v5, Lze7;->c:Z

    if-nez v6, :cond_5

    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object v8, v5, Lze7;->f:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v2, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p2, Lze7;->c:Z

    if-nez p1, :cond_4

    filled-new-array {p2}, [Lze7;

    move-result-object p1

    if-nez v6, :cond_3

    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v8, v9, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_4
    :goto_0
    invoke-virtual {v5, p0, v0, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    new-instance p1, Lfe9;

    invoke-direct {p1, v7, v1}, Lfe9;-><init>(Ljava/lang/String;Lhg4;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_5
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_6
    new-instance p0, Lorg/koin/core/error/ScopeAlreadyCreatedException;

    const-string p1, "Scope with id \'"

    const-string p2, "\' is already created"

    invoke-static {p1, v7, p2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
