.class public abstract Lorg/jsoup/nodes/m;
.super Lorg/jsoup/nodes/n;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/jsoup/nodes/n;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/n;-><init>()V

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()Lorg/jsoup/nodes/h;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    instance-of v1, v0, Lorg/jsoup/nodes/b;

    if-nez v1, :cond_0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v1, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->F()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/nodes/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lorg/jsoup/nodes/b;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->F()V

    iget-object p0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    check-cast p0, Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final j()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;
    .locals 1

    invoke-super {p0, p1}, Lorg/jsoup/nodes/n;->l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/m;

    iget-object p0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    instance-of v0, p0, Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jsoup/nodes/b;

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final p()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/n;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/jsoup/nodes/n;->d:Ljava/util/List;

    return-object p0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/m;->e:Ljava/lang/Object;

    instance-of p0, p0, Lorg/jsoup/nodes/b;

    return p0
.end method
