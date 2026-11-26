.class public final Lyn2;
.super Lw93;
.source "SourceFile"


# instance fields
.field public final d:Lw93;


# direct methods
.method public constructor <init>(Lw93;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lw93;-><init>()V

    iput-object p1, p0, Lyn2;->d:Lw93;

    return-void
.end method


# virtual methods
.method public final E(Lj46;)Lm93;
    .locals 0

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->E(Lj46;)Lm93;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lj46;Z)Ls18;
    .locals 1

    invoke-virtual {p1}, Lj46;->d()Lj46;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lw93;->e(Lj46;)V

    :cond_0
    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1, p2}, Lw93;->P(Lj46;Z)Ls18;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Lj46;)Lv48;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->Q(Lj46;)Lv48;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lj46;)Ls18;
    .locals 0

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->a(Lj46;)Ls18;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lj46;Lj46;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1, p2}, Lw93;->b(Lj46;Lj46;)V

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0}, Lw93;->close()V

    return-void
.end method

.method public final f(Lj46;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->f(Lj46;)V

    return-void
.end method

.method public final g(Lj46;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->g(Lj46;)V

    return-void
.end method

.method public final o(Lj46;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->o(Lj46;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnn1;->I(Ljava/util/List;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v1}, Lzk1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lj46;)Ls93;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->v(Lj46;)Ls93;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v3, p0, Ls93;->c:Lj46;

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    iget-boolean v1, p0, Ls93;->a:Z

    iget-boolean v2, p0, Ls93;->b:Z

    iget-object v4, p0, Ls93;->d:Ljava/lang/Long;

    iget-object v5, p0, Ls93;->e:Ljava/lang/Long;

    iget-object v6, p0, Ls93;->f:Ljava/lang/Long;

    iget-object v7, p0, Ls93;->g:Ljava/lang/Long;

    iget-object v8, p0, Ls93;->h:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls93;

    invoke-direct/range {v0 .. v8}, Ls93;-><init>(ZZLj46;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-object v0
.end method

.method public final y(Lj46;)Lm93;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn2;->d:Lw93;

    invoke-virtual {p0, p1}, Lw93;->y(Lj46;)Lm93;

    move-result-object p0

    return-object p0
.end method
