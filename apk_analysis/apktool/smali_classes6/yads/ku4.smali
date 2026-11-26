.class public final Lyads/ku4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;


# direct methods
.method public constructor <init>(Lyads/t5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ku4;->a:Lyads/t5;

    return-void
.end method

.method public static final a(Ljava/util/Set;Lyads/r5;)Z
    .locals 0

    .line 79
    iget-object p1, p1, Lyads/r5;->a:Lyads/s5;

    .line 80
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/LinkedHashMap;
    .locals 3

    iget-object p0, p0, Lyads/ku4;->a:Lyads/t5;

    iget-object v0, p0, Lyads/t5;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/t5;->d:Ljava/util/ArrayList;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Lpn1;

    invoke-direct {v0, p0}, Lpn1;-><init>(Ljava/lang/Iterable;)V

    new-instance p0, Lnu1;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lnu1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p0}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lpa3$a;

    invoke-direct {v0, p0}, Lpa3$a;-><init>(Lpa3;)V

    :goto_0
    invoke-virtual {v0}, Lpa3$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lpa3$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/r5;

    iget-object v1, p0, Lyads/r5;->a:Lyads/s5;

    iget-object v1, v1, Lyads/s5;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lyads/r5;->b:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
