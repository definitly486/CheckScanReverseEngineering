.class public Lorg/jsoup/nodes/h;
.super Lorg/jsoup/nodes/n;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/nodes/n;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/jsoup/nodes/h$a;

.field public static final j:Ljava/lang/String;


# instance fields
.field public final e:Ljj8;

.field public f:Lorg/jsoup/nodes/h$a;

.field public g:Lorg/jsoup/nodes/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/jsoup/nodes/h;->h:Ljava/util/List;

    new-instance v0, Lorg/jsoup/nodes/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/h$a;-><init>(I)V

    sput-object v0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/h$a;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/h;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/n;-><init>()V

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    sget-object v0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/h$a;

    iput-object v0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iput-object p3, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    iput-object p1, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    invoke-static {p2}, Lja8;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Lorg/jsoup/nodes/h;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final E(Lorg/jsoup/nodes/n;)V
    .locals 1

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_0
    iput-object p0, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lorg/jsoup/nodes/n;->c:I

    return-void
.end method

.method public final F(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 5

    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/jsoup/nodes/f;->l:Lw36;

    goto :goto_0

    :cond_0
    new-instance v1, Lw36;

    new-instance v2, Lby3;

    invoke-direct {v2}, Lby3;-><init>()V

    invoke-direct {v1, v2}, Lw36;-><init>(Lby3;)V

    :goto_0
    new-instance v2, Lorg/jsoup/nodes/h;

    invoke-virtual {v1}, Lw36;->e()Lbk8;

    move-result-object v3

    iget-object v1, v1, Lw36;->c:Lq36;

    iget-boolean v1, v1, Lq36;->a:Z

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v0, v1}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v4}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    return-object v2
.end method

.method public G()Lorg/jsoup/nodes/h;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final H(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    sget-object v0, Lorg/jsoup/nodes/h;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final I()Lorg/jsoup/nodes/h;
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/n;

    instance-of v3, v2, Lorg/jsoup/nodes/h;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/jsoup/nodes/h;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object p0

    return-object p0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lorg/jsoup/nodes/h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/o;

    const-class v1, Lorg/jsoup/nodes/h;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/o;-><init>(Lorg/jsoup/nodes/n;Ljava/lang/Class;)V

    const/16 p0, 0x111

    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h()Lorg/jsoup/nodes/b;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/jsoup/nodes/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/o;

    const-class v1, Lorg/jsoup/nodes/h;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/o;-><init>(Lorg/jsoup/nodes/n;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;
    .locals 3

    invoke-super {p0, p1}, Lorg/jsoup/nodes/n;->l(Lorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/h;

    new-instance v0, Lorg/jsoup/nodes/h$a;

    iget-object v1, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/h$a;-><init>(I)V

    iput-object v0, p1, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iget-object v1, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    const-string v0, "/jsoup.userdata"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object p0, p0, v1

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    :goto_0
    const-string p0, "jsoup.childEls"

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    sget-object v1, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/h$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/nodes/h$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/h$a;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    :cond_0
    return-object v0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 5

    iget-object v0, p2, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v1, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    iget-object v2, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    if-ne v0, v1, :cond_0

    iget-object v3, v2, Ljj8;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/nodes/a;->b(Ljava/lang/String;Lorg/jsoup/nodes/f$a$a;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v2, Ljj8;->c:Ljava/lang/String;

    :goto_0
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Lnw6;->a(C)Lnw6;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    iget-object v4, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, p2}, Lorg/jsoup/nodes/b;->k(Lnw6;Lorg/jsoup/nodes/f$a;)V

    :cond_1
    iget-object p0, p0, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    const/16 p2, 0x3e

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, v2, Ljj8;->b:Ljava/lang/String;

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, p0

    :goto_2
    if-eqz v0, :cond_5

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljj8;->f(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v2, Ljj8;->e:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljj8;->h()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2}, Ljj8;->i()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const-string p0, " />"

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljj8;->h()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, p2}, Lnw6;->a(C)Lnw6;

    return-void

    :cond_6
    const-string p0, "></"

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnw6;->a(C)Lnw6;

    return-void

    :cond_7
    invoke-virtual {p1, p2}, Lnw6;->a(C)Lnw6;

    return-void
.end method
