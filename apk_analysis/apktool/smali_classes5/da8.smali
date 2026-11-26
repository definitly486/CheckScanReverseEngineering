.class public final Lda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly36;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly36<",
        "TOutput;>;"
    }
.end annotation


# instance fields
.field public final a:Lxh5$a;

.field public final b:Ljava/lang/String;

.field public final c:Lda8$a;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lxh5$a;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lda8;->a:Lxh5$a;

    iput-object p3, p0, Lda8;->b:Ljava/lang/String;

    new-instance p2, Lda8$a;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lda8$a;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lda8;->c:Lda8$a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lda8;->c:Lda8$a;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v0, v0, Lda8$a;->a:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Lmu2;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v8}, Lmu2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v6, v7}, Lu96;->b(Ljava/util/List;ILnl3;)I

    move-result v5

    if-gez v5, :cond_0

    new-instance v6, Lda8$a;

    invoke-direct {v6, p3}, Lda8$a;-><init>(Ljava/lang/Object;)V

    neg-int v5, v5

    sub-int/2addr v5, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb36;

    invoke-direct {v4, v3, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v6

    goto :goto_2

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lda8$a;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lda8$a;->b:Z

    if-nez v1, :cond_2

    iput-boolean v3, v0, Lda8$a;->b:Z

    goto :goto_0

    :cond_2
    const-string p0, "The string \'"

    const-string p1, "\' was passed several times"

    invoke-static {p0, p2, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw p3

    :cond_3
    iget-object p0, p0, Lda8;->b:Ljava/lang/String;

    const-string p1, "Found an empty string in "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw p3

    :cond_4
    iget-object p0, p0, Lda8;->c:Lda8$a;

    invoke-static {p0}, Lda8;->b(Lda8$a;)V

    return-void
.end method

.method public static final b(Lda8$a;)V
    .locals 7

    iget-object p0, p0, Lda8$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb36;

    iget-object v1, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v1, Lda8$a;

    invoke-static {v1}, Lda8;->b(Lda8$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb36;

    iget-object v3, v2, Lb36;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lb36;->c:Ljava/lang/Object;

    check-cast v2, Lda8$a;

    iget-boolean v4, v2, Lda8$a;->b:Z

    iget-object v5, v2, Lda8$a;->a:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    invoke-static {v5}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb36;

    iget-object v4, v2, Lb36;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Lb36;->c:Ljava/lang/Object;

    check-cast v2, Lda8$a;

    invoke-static {v3, v4}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb36;

    invoke-direct {v4, v3, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lb36;

    invoke-direct {v4, v3, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    new-instance v1, Lda8$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Lm02;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 11

    new-instance v0, Lp07;

    invoke-direct {v0}, Lp07;-><init>()V

    iput p3, v0, Lp07;->b:I

    iget-object v1, p0, Lda8;->c:Lda8$a;

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lp07;->b:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    iget-boolean v3, v1, Lda8$a;->b:Z

    if-eqz v3, :cond_0

    iget v2, v0, Lp07;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    iget-object v1, v1, Lda8$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb36;

    iget-object v4, v3, Lb36;->b:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Lda8$a;

    iget v6, v0, Lp07;->b:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v4, v7, v5}, Lra8;->B(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move-object v5, p2

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lta8;->S(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_2

    iget p2, v0, Lp07;->b:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    iput v1, v0, Lp07;->b:I

    move-object v1, v3

    move-object p2, v5

    goto :goto_0

    :cond_2
    move-object p2, v5

    goto :goto_1

    :cond_3
    move-object v5, p2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v5, p3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lda8;->a:Lxh5$a;

    invoke-virtual {p0, p1, p2}, Lxh5$a;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    new-instance v0, Lz36;

    invoke-direct {v0, p1, p2, p0}, Lz36;-><init>(Ljava/lang/Object;Ljava/lang/String;Lxh5$a;)V

    new-instance p0, Lo36;

    invoke-direct {p0, p3, v0}, Lo36;-><init>(ILll3;)V

    return-object p0

    :cond_5
    new-instance p1, Lea8;

    invoke-direct {p1, p0, v5, p3, v0}, Lea8;-><init>(Lda8;Ljava/lang/CharSequence;ILp07;)V

    new-instance p0, Lo36;

    invoke-direct {p0, p3, p1}, Lo36;-><init>(ILll3;)V

    return-object p0
.end method
