.class public final Lu36;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu36$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output::",
        "Lm02<",
        "TOutput;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(La46;Ljava/lang/CharSequence;Lm02;)Lm02;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lu36$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lu36$a;-><init>(Lm02;La46;I)V

    filled-new-array {v1}, [Lu36$a;

    move-result-object p0

    invoke-static {p0}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-static {p0}, Lnn1;->F(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu36$a;

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    new-instance p0, Ls36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_1
    new-instance p0, Lkotlinx/datetime/internal/format/parser/ParseException;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Position "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo36;

    iget p2, p2, Lo36;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo36;

    iget-object p2, p2, Lo36;->b:Lll3;

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x21

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object p2, Lt51;->h:Lt51;

    const/16 v1, 0x38

    const-string v2, ", "

    invoke-static {v0, p1, v2, p2, v1}, Lqn1;->Z(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;Lnl3;I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v1, p2, Lu36$a;->a:Ljava/lang/Object;

    check-cast v1, Lm02;

    invoke-interface {v1}, Lm02;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm02;

    iget v3, p2, Lu36$a;->c:I

    iget-object p2, p2, Lu36$a;->b:La46;

    iget-object v4, p2, La46;->a:Ljava/util/List;

    iget-object v5, p2, La46;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_6

    iget-object v7, p2, La46;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly36;

    invoke-interface {v7, v1, p1, v3}, Ly36;->a(Lm02;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    instance-of p2, v3, Lo36;

    if-eqz p2, :cond_5

    check-cast v3, Lo36;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string p0, "Unexpected parse result: "

    invoke-static {v3, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ne v3, p2, :cond_7

    return-object v1

    :cond_7
    new-instance p2, Lo36;

    sget-object v1, Lt36;->f:Lt36;

    invoke-direct {p2, v3, v1}, Lo36;-><init>(ILll3;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    :goto_3
    add-int/lit8 v4, p2, -0x1

    new-instance v6, Lu36$a;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La46;

    invoke-direct {v6, v1, p2, v3}, Lu36$a;-><init>(Lm02;La46;I)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_9

    goto/16 :goto_0

    :cond_9
    move p2, v4

    goto :goto_3
.end method
