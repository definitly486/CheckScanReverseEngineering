.class public final Lva5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua5;


# instance fields
.field public final a:Lcom/google/common/collect/j;

.field public final b:Lta5;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lta5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object p1

    iput-object p1, p0, Lva5;->a:Lcom/google/common/collect/j;

    iput-object p2, p0, Lva5;->b:Lta5;

    return-void
.end method


# virtual methods
.method public final a(Lvv4;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lua5;->a(Lvv4;Ljava/util/List;Ljava/util/List;)V

    iget-object p2, p0, Lva5;->a:Lcom/google/common/collect/j;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lwa5;

    invoke-interface {p3}, Lwa5;->b()I

    move-result v0

    iget v1, p1, Le46;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lva5;->b:Lta5;

    invoke-virtual {v0}, Lta5;->b()Ljava/util/List;

    invoke-interface {p3}, Lwa5;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lhw4;JLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw4;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lua5;->b(Lhw4;JLjava/util/List;Ljava/util/List;)V

    iget-object p2, p0, Lva5;->a:Lcom/google/common/collect/j;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lwa5;

    invoke-interface {p3}, Lwa5;->b()I

    move-result p4

    iget p5, p1, Le46;->a:I

    if-gt p4, p5, :cond_0

    iget-object p4, p0, Lva5;->b:Lta5;

    invoke-virtual {p4}, Lta5;->b()Ljava/util/List;

    invoke-interface {p3}, Lwa5;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
