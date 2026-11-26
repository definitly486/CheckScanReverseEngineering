.class public final Ltp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrp5;


# instance fields
.field public final a:Ldp5;


# direct methods
.method public constructor <init>(Ldp5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp5;->a:Ldp5;

    return-void
.end method


# virtual methods
.method public final a(I)Lp08;
    .locals 2

    const/16 v0, 0xf

    iget-object p0, p0, Ltp5;->a:Ldp5;

    invoke-interface {p0, p1, v0}, Ldp5;->b(II)Lmz7;

    move-result-object p0

    new-instance p1, Lsp0;

    const/4 v0, 0x1

    sget-object v1, Lsp5;->f:Lsp5;

    invoke-direct {p1, v1, v0}, Lsp0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final b()Lp08;
    .locals 3

    iget-object p0, p0, Ltp5;->a:Ldp5;

    invoke-interface {p0}, Ldp5;->c()Lmz7;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lu08;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    sget-object p0, Lod3;->h:Lod3;

    new-instance v0, Lvv;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lvv;-><init>(Lnl3;I)V

    new-instance p0, Lp08;

    invoke-direct {p0, v1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p0
.end method

.method public final c(Ljava/util/List;)Ljq1;
    .locals 3

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

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Ltp5;->a:Ldp5;

    invoke-interface {v2, v1}, Ldp5;->a(I)Lqp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lqp1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lqp1;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lqq1;

    new-instance p1, Ljq1;

    invoke-direct {p1, p0}, Ljq1;-><init>([Lqq1;)V

    return-object p1
.end method
