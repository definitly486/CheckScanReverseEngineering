.class public final synthetic Lxq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxq2;->b:I

    iput-object p1, p0, Lxq2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lxq2;->b:I

    iget-object p0, p0, Lxq2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    move-object p0, p2

    :goto_0
    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x4

    invoke-static {v2, p0, p1, v0, p2}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_2

    :cond_1
    move-object p2, v6

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lb36;

    invoke-direct {p2, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    const-string p0, "Collection has more than one element."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string p0, "Collection is empty."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    new-instance p2, Ly74;

    if-gez p1, :cond_6

    move p1, v0

    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p2, p1, v3, v1}, Lw74;-><init>(III)V

    instance-of v1, v2, Ljava/lang/String;

    iget v7, p2, Lw74;->d:I

    iget p2, p2, Lw74;->c:I

    if-eqz v1, :cond_c

    if-lez v7, :cond_7

    if-le p1, p2, :cond_8

    :cond_7
    if-gez v7, :cond_1

    if-gt p2, p1, :cond_1

    :cond_8
    :goto_1
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v0, v5, p1, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_a
    move-object v3, v6

    :goto_2
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lb36;

    invoke-direct {p2, p0, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    if-eq p1, p2, :cond_1

    add-int/2addr p1, v7

    goto :goto_1

    :cond_c
    if-lez v7, :cond_d

    if-le p1, p2, :cond_e

    :cond_d
    if-gez v7, :cond_1

    if-gt p2, p1, :cond_1

    :cond_e
    move v3, p1

    :goto_3
    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lta8;->S(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_10
    move-object v8, v6

    :goto_4
    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lb36;

    invoke-direct {p2, p0, v8}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    if-eq v3, p2, :cond_1

    add-int/2addr v3, v7

    goto :goto_3

    :goto_5
    if-eqz p2, :cond_12

    iget-object p0, p2, Lb36;->b:Ljava/lang/Object;

    iget-object p1, p2, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v6, Lb36;

    invoke-direct {v6, p0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    :goto_6
    return-object v6

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->a(Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
