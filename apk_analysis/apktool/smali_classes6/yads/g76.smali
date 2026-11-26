.class public final Lyads/g76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/co2;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Lyads/h76;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lyads/co2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/g76;->a:Lyads/co2;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Lyads/g76;->d:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lyads/g76;Ljava/lang/String;Lyads/u66;)Lj59;
    .locals 3

    .line 72
    iget-object v0, p0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    .line 73
    invoke-virtual {p2}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Lb36;

    invoke-direct {v2, p1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lyads/g76;->a()V

    .line 77
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lnl3;
    .locals 2

    .line 71
    new-instance v0, Lts9;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lts9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb36;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/u66;

    iget-object v3, v3, Lb36;->b:Ljava/lang/Object;

    new-instance v4, Lb36;

    invoke-direct {v4, v3, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/f76;

    invoke-direct {v0}, Lyads/f76;-><init>()V

    invoke-static {v1, v0}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lyads/g76;->c:Lyads/h76;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lyads/h76;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    .line 79
    new-instance v1, Lb36;

    invoke-direct {v1, p2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/u66;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 83
    :try_start_0
    invoke-virtual {p2, p3}, Lyads/u66;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 84
    :catch_0
    iget-object p0, p0, Lyads/g76;->a:Lyads/co2;

    new-instance p2, Lyads/k76;

    const-string v1, "\' value to variable \'"

    const-string v2, "\'."

    .line 85
    const-string v3, "Unable to set \'"

    invoke-static {v3, p3, v1, p1, v2}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    .line 86
    invoke-direct {p2, p1, v0, p3}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-virtual {p0, p2}, Lyads/co2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
