.class public final Lgx8$j;
.super Lgx8$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public k:Z


# virtual methods
.method public final bridge synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lgx8$j;->o()V

    return-void
.end method

.method public final bridge synthetic m()Lgx8$h;
    .locals 0

    invoke-virtual {p0}, Lgx8$j;->o()V

    return-object p0
.end method

.method public final o()V
    .locals 1

    invoke-super {p0}, Lgx8$h;->m()Lgx8$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgx8$j;->k:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lgx8$j;->k:Z

    if-eqz v0, :cond_0

    const-string v1, "<!"

    goto :goto_0

    :cond_0
    const-string v1, "<?"

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ">"

    goto :goto_1

    :cond_1
    const-string v0, "?>"

    :goto_1
    iget-object v2, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgx8$h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgx8$h;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
