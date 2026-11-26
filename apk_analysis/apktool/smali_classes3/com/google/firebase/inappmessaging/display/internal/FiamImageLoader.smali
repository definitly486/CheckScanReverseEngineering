.class public Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;,
        Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;
    }
.end annotation


# instance fields
.field private final requestManager:Lp37;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lj72;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp37;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lp37;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public cancelTag(Ljava/lang/Class;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj72;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lp37;

    invoke-virtual {v2, v1}, Lp37;->c(Lwk8;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsTag(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public load(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting Downloading Image : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Lcr3;

    new-instance v1, Lmm4$a;

    invoke-direct {v1}, Lmm4$a;-><init>()V

    new-instance v2, Lmm4$b;

    const-string v3, "image/*"

    invoke-direct {v2, v3}, Lmm4$b;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v1, Lmm4$a;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, v1, Lmm4$a;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v3, v1, Lmm4$a;->a:Ljava/util/Map;

    iget-object v3, v1, Lmm4$a;->a:Ljava/util/Map;

    const-string v4, "Accept"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lmm4$a;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm4;

    iget-object v1, v1, Lmm4$a;->a:Ljava/util/Map;

    invoke-direct {v2, v1}, Lmm4;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p1, v2}, Lcr3;-><init>(Ljava/lang/String;Llv3;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lp37;

    invoke-virtual {p1, v0}, Lp37;->g(Ljava/lang/Object;)Lh37;

    move-result-object p1

    sget-object v0, Lld2;->PREFER_ARGB_8888:Lld2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lr96;->b(Ljava/lang/Object;)V

    sget-object v1, Lvq2;->f:Lqz5;

    invoke-virtual {p1, v1, v0}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object p1

    sget-object v1, Ldq3;->a:Lqz5;

    invoke-virtual {p1, v1, v0}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object p1

    check-cast p1, Lh37;

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;Lh37;)V

    return-object v0
.end method
