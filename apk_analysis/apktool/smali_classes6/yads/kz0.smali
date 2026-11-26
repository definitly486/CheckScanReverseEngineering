.class public final Lyads/kz0;
.super Lyads/rd2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lyads/rd2;-><init>()V

    iput-object p1, p0, Lyads/kz0;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/kz0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;
    .locals 1

    .line 104
    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p3

    invoke-interface {p3}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lyads/kz0;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 105
    iget-object p0, p0, Lyads/kz0;->b:Ljava/util/ArrayList;

    .line 106
    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 107
    new-instance p3, Lyads/cn1;

    invoke-direct {p3, p1, p2}, Lyads/cn1;-><init>(Lyads/br0;Lyads/fs2;)V

    .line 108
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/vq0;)Lyads/cn1;
    .locals 5

    invoke-virtual {p1}, Lyads/vq0;->q()Lyads/db1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lyads/db1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cb1;

    iget-object v3, v2, Lyads/cb1;->a:Lyads/br0;

    invoke-virtual {p1}, Lyads/vq0;->m()Lyads/tt;

    move-result-object v4

    invoke-static {v2}, Lyads/m32;->a(Lyads/cb1;)Lyads/n32;

    move-result-object v2

    invoke-virtual {p0, v3, v4, v2}, Lyads/rd2;->b(Lyads/br0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/kz0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lyads/kz0;->a:Ljava/lang/String;

    const-string v2, "Error resolving container. Elements that respond to id \'"

    const-string v3, "\' are not found."

    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lyads/kz0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lyads/kz0;->a:Ljava/lang/String;

    const-string v2, "Error resolving container. Found multiple elements that respond to id \'"

    const-string v3, "\'."

    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    iget-object p0, p0, Lyads/kz0;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    return-object p0
.end method
