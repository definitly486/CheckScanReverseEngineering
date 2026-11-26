.class public final Lyads/hb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ao2;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hb2;->a:Lyads/ao2;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/hb2;->b:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/hb2;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lyads/hb2;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lyads/hb2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/sx5;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, p2}, Lyads/sx5;->a(Ljava/lang/String;)V

    sget-object v1, Lj59;->a:Lj59;

    :cond_1
    if-nez v1, :cond_2

    .line 56
    iget-object p0, p0, Lyads/hb2;->a:Lyads/ao2;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timer with id \'"

    const-string v1, "\' does not exist!"

    .line 57
    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    return-void
.end method

.method public final a(Lyads/vq0;)V
    .locals 3

    iget-object v0, p0, Lyads/hb2;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lyads/hb2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/sx5;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lyads/sx5;->e:Lyads/vq0;

    invoke-static {p1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p1, v1, Lyads/sx5;->e:Lyads/vq0;

    iget-boolean v2, v1, Lyads/sx5;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {v2}, Lyads/uw5;->g()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/sx5;->i:Z

    goto :goto_0

    :cond_2
    return-void
.end method
