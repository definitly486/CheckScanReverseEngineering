.class public final synthetic Lk51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lk51;->b:I

    iput-object p1, p0, Lk51;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk51;->b:I

    iget-object p0, p0, Lk51;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->v(Lyads/nq0;)Lyads/jk1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->o(Lyads/gf0;)Lyads/cn3;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ls96;

    iget-object p0, p0, Ls96;->b:Ldp3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldp3;->childSerializers()[Ldf4;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lu96;->c:[Ldf4;

    :cond_1
    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p0}, Landroidx/compose/material3/DatePickerKt;->f(Landroidx/compose/foundation/lazy/LazyListState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ltd2$a;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Landroidx/compose/material3/carousel/CarouselState;->b(Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
