.class public final synthetic Lve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo07;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDragScope;Lo07;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lve;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lve;->d:Ljava/lang/Object;

    iput-object p2, p0, Lve;->c:Lo07;

    return-void
.end method

.method public synthetic constructor <init>(Lo07;Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lve;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lve;->c:Lo07;

    iput-object p2, p0, Lve;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lve;->b:I

    iget-object v1, p0, Lve;->d:Ljava/lang/Object;

    iget-object p0, p0, Lve;->c:Lo07;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p0, v1, p1, p2}, Landroidx/compose/foundation/pager/PagerStateKt;->b(Lo07;Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;FF)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Landroidx/compose/foundation/gestures/AnchoredDragScope;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v1, p0, p1, p2}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->f(Landroidx/compose/foundation/gestures/AnchoredDragScope;Lo07;FF)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
