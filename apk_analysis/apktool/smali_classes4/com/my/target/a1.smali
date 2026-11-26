.class public final Lcom/my/target/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:Lcom/my/target/n;

.field public c:Lcom/my/target/n$a;


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/a1;->b:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/my/target/n;->getPosition()J

    iget-object v0, p0, Lcom/my/target/a1;->b:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->getDuration()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/my/target/a1;->c:Lcom/my/target/n$a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/my/target/n$a;->s()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/my/target/a1;->b:Lcom/my/target/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/a1;->c:Lcom/my/target/n$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
