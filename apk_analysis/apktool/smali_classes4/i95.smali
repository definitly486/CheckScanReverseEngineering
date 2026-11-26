.class public final synthetic Li95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Li95;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Li95;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/Timeline$Window;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/Collection;

    sget p0, Lcom/google/common/collect/m;->e:I

    instance-of p0, p1, Lcom/google/common/collect/m;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/google/common/collect/m;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance p0, Lcom/google/common/collect/m$b;

    instance-of v0, p1, Lcom/google/common/collect/t;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/t;

    invoke-interface {v1}, Lcom/google/common/collect/t;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/common/collect/m$b;-><init>(I)V

    iget-object v1, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/google/common/collect/t;

    instance-of v0, p1, Lcom/google/common/collect/y;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/y;

    iget-object v0, v0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/google/common/collect/f;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    iget v1, p1, Lcom/google/common/collect/v;->c:I

    iget v2, v0, Lcom/google/common/collect/v;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/v;->a(I)V

    iget p1, v0, Lcom/google/common/collect/v;->c:I

    const/4 v1, -0x1

    if-nez p1, :cond_5

    :cond_4
    move p1, v1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-ltz p1, :cond_8

    iget v2, v0, Lcom/google/common/collect/v;->c:I

    invoke-static {p1, v2}, Lo8;->j(II)V

    iget-object v2, v0, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v;->c(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/google/common/collect/m$b;->c(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    iget v2, v0, Lcom/google/common/collect/v;->c:I

    if-ge p1, v2, :cond_4

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lcom/google/common/collect/t;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    iget v2, v1, Lcom/google/common/collect/v;->c:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/v;->a(I)V

    invoke-interface {p1}, Lcom/google/common/collect/t;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t$a;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/m$b;->c(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/m$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/i$b;

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/m$b;->d()Lcom/google/common/collect/y;

    move-result-object p0

    :goto_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
