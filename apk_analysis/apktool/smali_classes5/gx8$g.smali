.class public final Lgx8$g;
.super Lgx8$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lby3;)V
    .locals 1

    sget-object v0, Lgx8$i;->StartTag:Lgx8$i;

    invoke-direct {p0, v0, p1}, Lgx8$h;-><init>(Lgx8$i;Lh39;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lgx8$g;->m()Lgx8$h;

    return-void
.end method

.method public final m()Lgx8$h;
    .locals 1

    invoke-super {p0}, Lgx8$h;->m()Lgx8$h;

    const/4 v0, 0x0

    iput-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lgx8$h;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "/>"

    goto :goto_0

    :cond_0
    const-string v0, ">"

    :goto_0
    iget-object v1, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    const-string v2, "<"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgx8$h;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgx8$h;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
