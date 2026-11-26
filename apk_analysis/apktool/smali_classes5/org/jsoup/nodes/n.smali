.class public abstract Lorg/jsoup/nodes/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lorg/jsoup/nodes/h;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/jsoup/nodes/n;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lorg/jsoup/nodes/h;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final B()Lorg/jsoup/nodes/n;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->D()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lorg/jsoup/nodes/n;->c:I

    add-int/lit8 p0, p0, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/n;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public C(Lorg/jsoup/nodes/n;)V
    .locals 3

    iget-object v0, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lyb9;->b(Z)V

    move-object v0, p0

    check-cast v0, Lorg/jsoup/nodes/h;

    iget-object v2, v0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iget-boolean v2, v2, Lorg/jsoup/nodes/h$a;->b:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object p0

    iget v2, p1, Lorg/jsoup/nodes/n;->c:I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, v0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iput-boolean v1, p0, Lorg/jsoup/nodes/h$a;->b:Z

    const/4 p0, 0x0

    iput-object p0, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    return-void
.end method

.method public final D()I
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iget-boolean v2, v1, Lorg/jsoup/nodes/h$a;->b:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    if-ge v2, v1, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/n;

    iput v2, v3, Lorg/jsoup/nodes/n;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v3, Lorg/jsoup/nodes/h$a;->b:Z

    :cond_1
    iget p0, p0, Lorg/jsoup/nodes/n;->c:I

    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lyb9;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->s()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->h()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lja8;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, p0}, Lja8;->l(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lja8;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, p0

    :cond_1
    move-object p0, v1

    :goto_1
    return-object p0

    :cond_2
    return-object v1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->s()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->h()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract h()Lorg/jsoup/nodes/b;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()I
.end method

.method public k()Lorg/jsoup/nodes/n;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/n;->l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->j()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/n;

    invoke-virtual {v5, v1}, Lorg/jsoup/nodes/n;->l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/n;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    check-cast v1, Lorg/jsoup/nodes/h;

    iput-object v1, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->D()I

    move-result v1

    :goto_0
    iput v1, v0, Lorg/jsoup/nodes/n;->c:I

    if-nez p1, :cond_2

    instance-of p1, p0, Lorg/jsoup/nodes/f;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lorg/jsoup/nodes/f;

    iget-object v1, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/nodes/f;->l:Lw36;

    invoke-direct {p1, v1, v2, v3}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lw36;)V

    iget-object v1, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object v1

    iput-object v1, p1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    :cond_1
    iget-object p0, p0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f$a;->e()Lorg/jsoup/nodes/f$a;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    iput-object p1, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract p()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/n;",
            ">;"
        }
    .end annotation
.end method

.method public final q()Lorg/jsoup/nodes/n;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/n;

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->h()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public abstract s()Z
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lorg/jsoup/nodes/n;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->D()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/n;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public abstract v()Ljava/lang/String;
.end method

.method public w()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Lnw6;->d(Ljava/lang/StringBuilder;)Lnw6;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/jsoup/nodes/f;

    invoke-direct {v2}, Lorg/jsoup/nodes/f;-><init>()V

    iget-object v2, v2, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v2, Lorg/jsoup/nodes/f$a;->d:Z

    if-eqz v3, :cond_2

    new-instance v3, Lorg/jsoup/nodes/p$a;

    invoke-direct {v3, p0, v1, v2}, Lorg/jsoup/nodes/p;-><init>(Lorg/jsoup/nodes/n;Lnw6;Lorg/jsoup/nodes/f$a;)V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lorg/jsoup/nodes/p$a;->d:Z

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/jsoup/nodes/h;

    iget-object v2, v2, Lorg/jsoup/nodes/h;->e:Ljj8;

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Ljj8;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v3, Lorg/jsoup/nodes/p$a;->d:Z

    goto :goto_2

    :cond_1
    iget-object v1, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/jsoup/nodes/p;

    invoke-direct {v3, p0, v1, v2}, Lorg/jsoup/nodes/p;-><init>(Lorg/jsoup/nodes/n;Lnw6;Lorg/jsoup/nodes/f$a;)V

    :cond_3
    :goto_2
    invoke-static {v3, p0}, Lco5;->a(Lorg/jsoup/nodes/p;Lorg/jsoup/nodes/n;)V

    invoke-static {v0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract y(Lnw6;Lorg/jsoup/nodes/f$a;)V
.end method

.method public final z()Lorg/jsoup/nodes/f;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jsoup/nodes/f;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
