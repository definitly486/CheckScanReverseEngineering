.class public final Lyads/c16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/io4;


# instance fields
.field public final a:Lyads/ze3;

.field public final b:Lyads/bf3;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lyads/ze3;Lyads/bf3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c16;->a:Lyads/ze3;

    iput-object p2, p0, Lyads/c16;->b:Lyads/bf3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/g66;)Ljava/util/Map;
    .locals 2

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    iget-boolean p0, p0, Lyads/c16;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "failure_tracked"

    invoke-virtual {v0, v1, p0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lyads/g66;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lyads/g66;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/h66;

    iget-object v1, v1, Lyads/h66;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "warnings"

    invoke-virtual {v0, p0, p1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    .line 85
    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/lo4;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lyads/c16;->a:Lyads/ze3;

    .line 87
    iget-object p0, p0, Lyads/c16;->b:Lyads/bf3;

    .line 88
    iget-object p0, p0, Lyads/bf3;->d:Lyads/e75;

    .line 89
    iget-object p1, p1, Lyads/lo4;->b:Lyads/f66;

    .line 90
    invoke-virtual {v0, p1}, Lyads/ze3;->a(Lyads/f66;)Lyads/h75;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p0, p1}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    return-void
.end method

.method public final a(Lyads/d9;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lyads/c16;->a:Lyads/ze3;

    .line 102
    iput-object p1, p0, Lyads/ze3;->a:Lyads/d9;

    return-void
.end method

.method public final a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V
    .locals 1

    .line 92
    iget-boolean p1, p0, Lyads/c16;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lyads/c16;->f:Z

    .line 94
    invoke-virtual {p0, p3}, Lyads/c16;->a(Lyads/g66;)Ljava/util/Map;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lyads/c16;->a:Lyads/ze3;

    .line 96
    iget-object p0, p0, Lyads/c16;->b:Lyads/bf3;

    .line 97
    iget-object p0, p0, Lyads/bf3;->a:Lyads/e75;

    .line 98
    invoke-virtual {p2}, Lyads/ze3;->a()Lyads/h75;

    move-result-object p3

    .line 99
    iget-object v0, p3, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    invoke-virtual {p2, p0, p3}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/dk5;Lyads/f66;)V
    .locals 2

    .line 78
    iget p1, p0, Lyads/c16;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lyads/c16;->d:I

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 79
    iput-boolean v0, p0, Lyads/c16;->e:Z

    .line 80
    iget-object p1, p0, Lyads/c16;->a:Lyads/ze3;

    .line 81
    iget-object p0, p0, Lyads/c16;->b:Lyads/bf3;

    .line 82
    iget-object p0, p0, Lyads/bf3;->c:Lyads/e75;

    .line 83
    invoke-virtual {p1, p2}, Lyads/ze3;->a(Lyads/f66;)Lyads/h75;

    move-result-object p2

    .line 84
    invoke-virtual {p1, p0, p2}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/dk5;Lyads/g66;)V
    .locals 2

    .line 69
    iget-boolean p1, p0, Lyads/c16;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lyads/c16;->c:Z

    .line 71
    invoke-virtual {p0, p2}, Lyads/c16;->a(Lyads/g66;)Ljava/util/Map;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lyads/c16;->a:Lyads/ze3;

    .line 73
    iget-object p0, p0, Lyads/c16;->b:Lyads/bf3;

    .line 74
    iget-object p0, p0, Lyads/bf3;->b:Lyads/e75;

    .line 75
    invoke-virtual {p2}, Lyads/ze3;->a()Lyads/h75;

    move-result-object v0

    .line 76
    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    invoke-virtual {p2, p0, v0}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/c16;->c:Z

    iput v0, p0, Lyads/c16;->d:I

    iput-boolean v0, p0, Lyads/c16;->e:Z

    iput-boolean v0, p0, Lyads/c16;->f:Z

    return-void
.end method
