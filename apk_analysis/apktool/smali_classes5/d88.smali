.class public final Ld88;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lf88;",
        "Lk78;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ld88;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld88;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ld88;->f:Ld88;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lf88;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lf88;->a()Lk78;

    move-result-object p0

    invoke-virtual {p0}, Lk78;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ly74;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lw74;-><init>(III)V

    invoke-virtual {v1}, Lw74;->b()Lx74;

    move-result-object v1

    :goto_0
    iget-boolean v2, v1, Lx74;->d:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lu74;->nextInt()I

    move-result v2

    move-object v6, p1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkh9;

    invoke-virtual {v8}, Lkh9;->a()I

    move-result v8

    if-ne v8, v2, :cond_0

    move-object v5, v7

    :cond_1
    check-cast v5, Lkh9;

    if-nez v5, :cond_2

    new-instance v5, Lkh9;

    invoke-direct {v5, v2, v3, v4}, Lkh9;-><init>(IJ)V

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lc88;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkh9;

    invoke-virtual {p1}, Lkh9;->b()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    invoke-virtual {p0, v0}, Lk78;->f(Ljava/util/ArrayList;)V

    return-object p0

    :cond_4
    invoke-virtual {p0, v5}, Lk78;->f(Ljava/util/ArrayList;)V

    :cond_5
    return-object p0
.end method
