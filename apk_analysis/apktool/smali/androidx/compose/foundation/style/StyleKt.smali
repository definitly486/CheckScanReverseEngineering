.class public final Landroidx/compose/foundation/style/StyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;
    .locals 3

    .line 383
    sget-object v0, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    .line 384
    :cond_1
    instance-of v0, p0, Landroidx/compose/foundation/style/CombinedStyle;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    instance-of v2, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_2

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    .line 385
    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 386
    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    .line 387
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 388
    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ll68;->a(Ljava/lang/Object;)V

    .line 390
    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 391
    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    .line 392
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 393
    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    .line 394
    :cond_3
    instance-of v0, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v0, :cond_4

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    invoke-virtual {v0, p0}, Ll68;->a(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    .line 395
    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 396
    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    .line 397
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 398
    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    .line 399
    :cond_4
    new-instance v0, Landroidx/compose/foundation/style/CombinedStyle;

    new-array v1, v1, [Landroidx/compose/foundation/style/Style;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/style/CombinedStyle;-><init>([Landroidx/compose/foundation/style/Style;)V

    return-object v0
.end method

.method public static final Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;
    .locals 4

    sget-object v0, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/foundation/style/StyleKt;->Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-static {p0, p2}, Landroidx/compose/foundation/style/StyleKt;->Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleKt;->Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Landroidx/compose/foundation/style/CombinedStyle;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    instance-of v2, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_3

    instance-of v2, p2, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_3

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p2}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    instance-of v2, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_4

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ll68;->a(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    instance-of v2, p2, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_5

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ll68;->a(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p2}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v2, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v2, :cond_6

    instance-of v3, p2, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v3, :cond_6

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    invoke-virtual {v0, p0}, Ll68;->a(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p2}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz v0, :cond_7

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ll68;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ll68;->a(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v2, :cond_8

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    invoke-virtual {v0, p0}, Ll68;->a(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ll68;->a(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p2, Landroidx/compose/foundation/style/CombinedStyle;

    if-eqz v0, :cond_9

    new-instance v0, Ll68;

    invoke-direct {v0, v1}, Ll68;-><init>(I)V

    invoke-virtual {v0, p0}, Ll68;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ll68;->a(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-virtual {p2}, Landroidx/compose/foundation/style/CombinedStyle;->getStyles()[Landroidx/compose/foundation/style/Style;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0

    :cond_9
    new-array v0, v1, [Landroidx/compose/foundation/style/Style;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;
    .locals 7

    .line 400
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    .line 401
    aget-object v3, p0, v2

    .line 402
    sget-object v4, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-ne v3, v4, :cond_8

    .line 403
    array-length v0, p0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_1

    .line 404
    aget-object v4, p0, v2

    .line 405
    sget-object v5, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_7

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    .line 406
    new-array v0, v3, [Landroidx/compose/foundation/style/Style;

    .line 407
    array-length v2, p0

    move v4, v1

    :goto_2
    if-ge v1, v2, :cond_3

    .line 408
    aget-object v5, p0, v1

    .line 409
    sget-object v6, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-eq v5, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 410
    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 411
    :cond_3
    new-instance p0, Landroidx/compose/foundation/style/CombinedStyle;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/style/Style;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/CombinedStyle;-><init>([Landroidx/compose/foundation/style/Style;)V

    return-object p0

    .line 412
    :cond_4
    array-length v0, p0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 413
    aget-object v2, p0, v1

    .line 414
    sget-object v3, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-eq v2, v3, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 415
    :cond_6
    const-string p0, "Array contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_7
    sget-object p0, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    return-object p0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_9
    new-instance v0, Landroidx/compose/foundation/style/CombinedStyle;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/foundation/style/Style;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/style/CombinedStyle;-><init>([Landroidx/compose/foundation/style/Style;)V

    return-object v0
.end method

.method private static final fastAny([Ljava/lang/Object;Lnl3;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final fastCount([Ljava/lang/Object;Lnl3;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static final fastFirst([Ljava/lang/Object;Lnl3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Array contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final fastForEach([Ljava/lang/Object;Lnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final then(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleKt;->Style(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p0

    return-object p0
.end method
