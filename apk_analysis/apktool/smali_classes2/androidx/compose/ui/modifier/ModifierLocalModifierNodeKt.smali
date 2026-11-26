.class public final Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final modifierLocalMapOf()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 93
    sget-object v0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    return-object v0
.end method

.method public static final modifierLocalMapOf(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/compose/ui/modifier/SingleLocalMap;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    return-object v0
.end method

.method public static final varargs modifierLocalMapOf(Landroidx/compose/ui/modifier/ModifierLocal;Landroidx/compose/ui/modifier/ModifierLocal;[Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;[",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    .line 107
    new-instance v0, Lb36;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    new-instance p0, Ll68;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ll68;-><init>(I)V

    .line 109
    new-instance v2, Lb36;

    invoke-direct {v2, p1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v2}, Ll68;->a(Ljava/lang/Object;)V

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 113
    new-instance v6, Lb36;

    invoke-direct {v6, v5, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-array p2, v3, [Lb36;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Ll68;->b(Ljava/lang/Object;)V

    .line 117
    iget-object p0, p0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 118
    new-array p1, p1, [Lb36;

    .line 119
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 120
    check-cast p0, [Lb36;

    new-instance p1, Landroidx/compose/ui/modifier/MultiLocalMap;

    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>(Lb36;[Lb36;)V

    return-object p1
.end method

.method public static final modifierLocalMapOf(Lb36;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb36<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;+TT;>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroidx/compose/ui/modifier/SingleLocalMap;

    .line 96
    iget-object v1, p0, Lb36;->b:Ljava/lang/Object;

    .line 97
    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {v0, v1}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 98
    iget-object v1, p0, Lb36;->b:Ljava/lang/Object;

    .line 99
    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    .line 100
    iget-object p0, p0, Lb36;->c:Ljava/lang/Object;

    .line 101
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/modifier/SingleLocalMap;->set$ui(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final varargs modifierLocalMapOf(Lb36;Lb36;[Lb36;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb36<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb36<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;[",
            "Lb36<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    new-instance v1, Ll68;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ll68;-><init>(I)V

    invoke-virtual {v1, p1}, Ll68;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ll68;->b(Ljava/lang/Object;)V

    .line 103
    iget-object p1, v1, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 104
    new-array p2, p2, [Lb36;

    .line 105
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 106
    check-cast p1, [Lb36;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>(Lb36;[Lb36;)V

    return-object v0
.end method

.method public static final varargs modifierLocalMapOf([Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 8
    .annotation runtime Lul2;
    .end annotation

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lb36;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lyr;->F(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/modifier/ModifierLocal;

    new-instance v7, Lb36;

    invoke-direct {v7, v6, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v4, [Lb36;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lb36;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lb36;

    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    invoke-direct {v0, v2, p0}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>(Lb36;[Lb36;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/compose/ui/modifier/SingleLocalMap;

    invoke-static {p0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    return-object v0

    :cond_2
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    return-object p0
.end method

.method public static final varargs synthetic modifierLocalMapOf([Lb36;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 4
    .annotation runtime Lul2;
    .end annotation

    .line 121
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 122
    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    invoke-static {p0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb36;

    invoke-static {v2, p0}, Lyr;->F(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 123
    new-array v1, v1, [Lb36;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 124
    check-cast p0, [Lb36;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lb36;

    invoke-direct {v0, v3, p0}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>(Lb36;[Lb36;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    invoke-static {p0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    new-array v1, v1, [Lb36;

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>(Lb36;[Lb36;)V

    return-object v0

    .line 126
    :cond_1
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    return-object p0
.end method
