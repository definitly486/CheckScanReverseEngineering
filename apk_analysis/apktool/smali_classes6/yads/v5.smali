.class public final Lyads/v5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/q84;

.field public final c:Lyads/u5;

.field public final d:Lyads/le;

.field public e:Lyads/g85;

.field public f:Lyads/ah4;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p4, p4, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p4}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p4

    new-instance v0, Lyads/u5;

    invoke-direct {v0, p3}, Lyads/u5;-><init>(Lyads/t5;)V

    new-instance p3, Lyads/le;

    invoke-direct {p3, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/v5;->a:Lyads/e4;

    iput-object p4, p0, Lyads/v5;->b:Lyads/q84;

    iput-object v0, p0, Lyads/v5;->c:Lyads/u5;

    iput-object p3, p0, Lyads/v5;->d:Lyads/le;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v1, "status"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lyads/v5;->c:Lyads/u5;

    invoke-virtual {v1}, Lyads/u5;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "durations"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-boolean v1, p0, Lyads/v5;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "load_listener_available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v0}, Lyads/v5;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string v1, "status"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "failure_reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lyads/v5;->c:Lyads/u5;

    invoke-virtual {p1}, Lyads/u5;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "durations"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-boolean p1, p0, Lyads/v5;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "load_listener_available"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, v0}, Lyads/v5;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4

    new-instance v0, Lyads/h75;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    iget-object v1, p0, Lyads/v5;->e:Lyads/g85;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/g85;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lyads/v5;->f:Lyads/ah4;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/ah4;->a()Lyads/h75;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object v0

    :cond_1
    new-instance v1, Lyads/g75;

    sget-object v2, Lyads/e75;->c:Lyads/e75;

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    invoke-static {v2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "ad_loading_result"

    invoke-direct {v1, v3, v2, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object v0, p0, Lyads/v5;->b:Lyads/q84;

    invoke-virtual {v0, v1}, Lyads/q84;->a(Lyads/g75;)V

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "success"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/v5;->d:Lyads/le;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    iget-object p0, p0, Lyads/v5;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->l:Ljava/lang/String;

    if-nez p0, :cond_2

    sget-object p0, Lyads/c75;->a:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    :cond_3
    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 4

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lyads/v5;->g:Z

    return-void
.end method
