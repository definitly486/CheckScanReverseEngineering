.class public final Ltl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwz3;->a:Ljava/util/TimeZone;

    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    const/16 v3, 0x17

    add-int/2addr v3, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {p0, v3, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {p0, v5, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v2, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x54

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v2, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p0, v5, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p0, v5, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-static {p0, v5, v6}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0xea60

    div-int v1, v0, v1

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2b

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v5, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v4}, Lwz3;->b(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lhe4;Lnw4;)Lcl;
    .locals 4

    new-instance v0, Lcl;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    sget-object v3, Lun1;->b:Lun1;

    invoke-static {p0, p1, v1, v3, v2}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Ltd4;Lnw4;Z)Ldl;
    .locals 3

    new-instance v0, Ldl;

    if-eqz p2, :cond_0

    invoke-static {}, Lib9;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lvc3;->b:Lvc3;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lhe4;Lnw4;I)Lel;
    .locals 10

    new-instance v0, Lel;

    new-instance v1, Lmr3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p2, v1, Lmr3;->b:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object p0

    move p1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvf4;

    iget-object v1, p2, Lvf4;->b:Ljava/lang/Object;

    check-cast v1, Lkr3;

    iget-object v3, p2, Lvf4;->c:Ljava/lang/Object;

    check-cast v3, Lkr3;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v1, Lkr3;->a:[F

    array-length v5, v4

    iget-object v6, v3, Lkr3;->a:[F

    array-length v7, v6

    if-ne v5, v7, :cond_0

    goto :goto_2

    :cond_0
    array-length p2, v4

    array-length v5, v6

    add-int/2addr p2, v5

    new-array v5, p2, [F

    array-length v7, v4

    invoke-static {v4, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v7, v6

    invoke-static {v6, v2, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, p2, :cond_2

    aget v8, v5, v6

    cmpl-float v9, v8, v4

    if-eqz v9, :cond_1

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    aget v4, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v2, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p2

    invoke-virtual {v1, p2}, Lkr3;->b([F)Lkr3;

    move-result-object v1

    invoke-virtual {v3, p2}, Lkr3;->b([F)Lkr3;

    move-result-object p2

    new-instance v3, Lvf4;

    invoke-direct {v3, v1, p2}, Lvf4;-><init>(Lkr3;Lkr3;)V

    move-object p2, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {v0, p0}, Lu1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static f(Ltd4;Lnw4;)Lfl;
    .locals 4

    new-instance v0, Lfl;

    sget-object v1, Lc84;->b:Lc84;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static g(Lhe4;Lnw4;)Lhl;
    .locals 4

    new-instance v0, Lhl;

    invoke-static {}, Lib9;->c()F

    move-result v1

    sget-object v2, Lv96;->b:Lv96;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1;-><init>(Ljava/util/List;)V

    return-object v0
.end method
