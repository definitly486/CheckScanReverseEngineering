.class public final Lyads/ym4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/d9;

.field public final c:Ljava/util/List;

.field public final d:Lyads/yd3;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/d9;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lyads/yd3;

    invoke-direct {v0}, Lyads/yd3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ym4;->a:Lyads/e4;

    iput-object p2, p0, Lyads/ym4;->b:Lyads/d9;

    iput-object p3, p0, Lyads/ym4;->c:Ljava/util/List;

    iput-object v0, p0, Lyads/ym4;->d:Lyads/yd3;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lyads/ym4;->a:Lyads/e4;

    iget-boolean v0, v0, Lyads/e4;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/ym4;->b:Lyads/d9;

    iget-boolean v0, v0, Lyads/d9;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/ym4;->d:Lyads/yd3;

    iget-object p0, p0, Lyads/ym4;->c:Ljava/util/List;

    invoke-virtual {v0, p0}, Lyads/yd3;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rd3;

    iget-boolean v0, v0, Lyads/rd3;->f:Z

    if-nez v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
