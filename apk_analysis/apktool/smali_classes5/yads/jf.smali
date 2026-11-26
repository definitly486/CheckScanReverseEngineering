.class public abstract Lyads/jf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcl4;

.field public static final b:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le01;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Le01;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Lyads/jf;->a:Lcl4;

    new-instance v0, Lnk5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnk5;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Lyads/jf;->b:Lcl4;

    return-void
.end method

.method public static final a()Lg17;
    .locals 2

    .line 260
    new-instance v0, Lg17;

    const-string v1, "at\\s+([^\\(]+)\\(([^:]+):(\\d+)\\)"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Lta8;->P(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lyads/jf;->b:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg17;

    invoke-static {v5, v3}, Lg17;->a(Lg17;Ljava/lang/String;)Ls15;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ls15;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v6, v5}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/Thread;

    const-string v3, "[ExitInfo] "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v5, "at "

    invoke-static {v3, v5, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    sget-object v5, Lyads/jf;->a:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg17;

    invoke-static {v5, v3}, Lg17;->a(Lg17;Ljava/lang/String;)Ls15;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ls15;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ls15$a;

    invoke-virtual {v5, v6}, Ls15$a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Ls15;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ls15$a;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ls15$a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3}, Ls15;->a()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    check-cast v3, Ls15$a;

    invoke-virtual {v3, v7}, Ls15$a;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x6

    const/16 v8, 0x2e

    invoke-static {v5, v8, v4, v7}, Lta8;->O(Ljava/lang/String;CII)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_4

    const-string v4, ""

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v8, v5, v5}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-static {v3}, Lqa8;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_5
    invoke-direct {v7, v4, v5, v6, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    :goto_3
    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v3, v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    return-object p0
.end method

.method public static final b()Lg17;
    .locals 2

    new-instance v0, Lg17;

    const-string v1, "^\"(.*)\"\\s+(.+?)?\\s*prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
