.class public final Lrg1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lkg1;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lyg1;


# direct methods
.method public constructor <init>(Lyg1;)V
    .locals 0

    iput-object p1, p0, Lrg1;->f:Lyg1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg1;

    iget-wide v2, v1, Lkg1;->a:J

    iget-object v1, v1, Lkg1;->d:Ljava/lang/String;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lqg1;

    invoke-direct {v5}, Lqg1;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lx39;

    iget-object v5, v5, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-direct {v6, v5}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v4, v1, v6}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhv6;

    new-instance v4, Lvg1;

    iget-object v5, p0, Lrg1;->f:Lyg1;

    invoke-direct {v4, v5, v2, v3, v1}, Lvg1;-><init>(Lyg1;JLhv6;)V

    invoke-virtual {v5, v2, v3, v1, v4}, Lyg1;->e(JLhv6;Lnl3;)Lrp1;

    move-result-object v1

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v1, v2}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lkq1;

    invoke-direct {p0, v0}, Lkq1;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
