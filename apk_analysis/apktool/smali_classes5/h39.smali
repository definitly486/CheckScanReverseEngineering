.class public abstract Lh39;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lw36;

.field public b:Lea1;

.field public c:Ljx8;

.field public d:Lorg/jsoup/nodes/f;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Lgx8;

.field public h:Lq36;

.field public i:Lbk8;

.field public j:Lgx8$g;

.field public final k:Lgx8$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgx8$f;

    invoke-direct {v0, p0}, Lgx8$f;-><init>(Lh39;)V

    iput-object v0, p0, Lh39;->k:Lgx8$f;

    return-void
.end method


# virtual methods
.method public final a()Lorg/jsoup/nodes/h;
    .locals 1

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lh39;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0

    :cond_0
    iget-object p0, p0, Lh39;->d:Lorg/jsoup/nodes/f;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, p0, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Ljj8;->b:Ljava/lang/String;

    const-string p1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lh39;->a:Lw36;

    iget-object v0, v0, Lw36;->b:Lp36;

    invoke-virtual {v0}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ln36;

    iget-object p0, p0, Lh39;->b:Lea1;

    invoke-direct {v1, p0, p1, p2}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d()Lorg/jsoup/nodes/h;
    .locals 1

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lh39;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public abstract e(Lgx8;)Z
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lh39;->g:Lgx8;

    iget-object v1, p0, Lh39;->k:Lgx8$f;

    if-ne v0, v1, :cond_0

    new-instance v0, Lgx8$f;

    invoke-direct {v0, p0}, Lgx8$f;-><init>(Lh39;)V

    invoke-virtual {v0, p1}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh39;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v1}, Lgx8$h;->m()Lgx8$h;

    invoke-virtual {v1, p1}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lh39;->e(Lgx8;)Z

    move-result p0

    return p0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh39;->j:Lgx8$g;

    iget-object v1, p0, Lh39;->g:Lgx8;

    if-ne v1, v0, :cond_0

    new-instance v0, Lgx8$g;

    move-object v1, p0

    check-cast v1, Lby3;

    invoke-direct {v0, v1}, Lgx8$g;-><init>(Lby3;)V

    invoke-virtual {v0, p1}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh39;->e(Lgx8;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lgx8$g;->m()Lgx8$h;

    invoke-virtual {v0, p1}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh39;->e(Lgx8;)Z

    return-void
.end method

.method public final h(Lgx8$g;)Ljj8;
    .locals 3

    iget-object v0, p0, Lh39;->i:Lbk8;

    iget-object v1, p1, Lgx8$h;->d:Lm54;

    invoke-virtual {v1}, Lm54;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lgx8$h;->e:Ljava/lang/String;

    iget-object p0, p0, Lh39;->h:Lq36;

    iget-boolean p0, p0, Lq36;->a:Z

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1, p1, v2, p0}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object p0

    return-object p0
.end method
