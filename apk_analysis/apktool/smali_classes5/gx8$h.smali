.class public abstract Lgx8$h;
.super Lgx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# instance fields
.field public final d:Lm54;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lorg/jsoup/nodes/b;

.field public final h:Lm54;

.field public final i:Lm54;

.field public j:Z


# direct methods
.method public constructor <init>(Lgx8$i;Lh39;)V
    .locals 1

    invoke-direct {p0, p1}, Lgx8;-><init>(Lgx8$i;)V

    new-instance p1, Lm54;

    invoke-direct {p1}, Lm54;-><init>()V

    iput-object p1, p0, Lgx8$h;->d:Lm54;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgx8$h;->f:Z

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$h;->h:Lm54;

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$h;->i:Lm54;

    iput-boolean p1, p0, Lgx8$h;->j:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lgx8$h;->m()Lgx8$h;

    return-void
.end method

.method public final g(IIC)V
    .locals 0

    iget-object p0, p0, Lgx8$h;->i:Lm54;

    invoke-virtual {p0, p3}, Lm54;->a(C)V

    return-void
.end method

.method public final h([III)V
    .locals 4

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget v0, p1, p3

    iget-object v1, p0, Lgx8$h;->i:Lm54;

    iget-object v2, v1, Lm54;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lm54;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v2

    iput-object v2, v1, Lm54;->c:Ljava/lang/Object;

    iget-object v3, v1, Lm54;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iput-object v2, v1, Lm54;->b:Ljava/lang/Object;

    iget-object v1, v1, Lm54;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lm54;->b:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lgx8$h;->d:Lm54;

    invoke-virtual {v0, p1}, Lm54;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgx8$h;->e:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgx8$h;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iput-object p1, v0, Lm54;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgx8$h;->e:Ljava/lang/String;

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    :cond_0
    iget-object v0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {v0}, Lm54;->c()Z

    move-result v1

    iget-object v2, p0, Lgx8$h;->i:Lm54;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->size()I

    move-result v1

    const/16 v3, 0x200

    if-ge v1, v3, :cond_3

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lm54;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lm54;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lgx8$h;->j:Z

    if-eqz v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v4, v1, v3}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    invoke-virtual {v0}, Lm54;->d()V

    invoke-virtual {v2}, Lm54;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgx8$h;->j:Z

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgx8$h;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lgx8$h;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string v0, "Must be false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m()Lgx8$h;
    .locals 2

    invoke-super {p0}, Lgx8;->f()V

    iget-object v0, p0, Lgx8$h;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgx8$h;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lgx8$h;->f:Z

    iput-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    iget-object v0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iget-object v0, p0, Lgx8$h;->i:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iput-boolean v1, p0, Lgx8$h;->j:Z

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgx8$h;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[unset]"

    :cond_0
    return-object p0
.end method
