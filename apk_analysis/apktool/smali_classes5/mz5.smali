.class public final Lmz5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lj26<",
        "Lfz5;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lkz5$a;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj26;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkz5;->b(Lj26;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
