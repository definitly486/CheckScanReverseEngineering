.class public final Lyads/kh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fm4;


# instance fields
.field public final a:Lyads/sd4;

.field public b:Lyads/dh4;


# direct methods
.method public constructor <init>(Lyads/sd4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kh4;->a:Lyads/sd4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 109
    iget-object v0, p0, Lyads/kh4;->b:Lyads/dh4;

    if-eqz v0, :cond_1

    .line 110
    iget-object p0, p0, Lyads/kh4;->a:Lyads/sd4;

    .line 111
    iget-object p0, p0, Lyads/sd4;->b:Ljava/util/List;

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ak;

    .line 113
    invoke-virtual {v0, v1}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v2

    .line 114
    instance-of v3, v2, Lyads/dn0;

    if-eqz v3, :cond_0

    .line 115
    check-cast v2, Lyads/dn0;

    .line 116
    iget-object v1, v1, Lyads/ak;->c:Ljava/lang/Object;

    .line 117
    invoke-interface {v2, v1}, Lyads/dn0;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lyads/dh4;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lyads/dh4;->a()V

    return-void
.end method

.method public final a(Lyads/dh4;Lyads/g00;)V
    .locals 3

    iput-object p1, p0, Lyads/kh4;->b:Lyads/dh4;

    iget-object v0, p0, Lyads/kh4;->a:Lyads/sd4;

    iget-object v0, v0, Lyads/sd4;->f:Lyads/ot3;

    new-instance v1, Lyads/bb;

    invoke-direct {v1, p1, p2, v0}, Lyads/bb;-><init>(Lyads/dh4;Lyads/g00;Lyads/ot3;)V

    iget-object p0, p0, Lyads/kh4;->a:Lyads/sd4;

    iget-object p0, p0, Lyads/sd4;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ak;

    invoke-virtual {p1, p2}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_0

    iget-object v2, p2, Lyads/ak;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lyads/bk;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Lyads/bk;->a(Lyads/ak;Lyads/vf6;)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lyads/dh4;->d:Lyads/qh4;

    iget-object p0, p0, Lyads/qh4;->e:Lyads/e55;

    sget-object p2, Lyads/qh4;->g:[Lze4;

    const/4 v1, 0x4

    aget-object p2, p2, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/yb0;

    iget-object p2, p2, Lyads/yb0;->a:Ljava/lang/String;

    iget-object v1, p1, Lyads/dh4;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/bk;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_3

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {p2, v1}, Lyads/bk;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method
