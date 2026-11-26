.class public final synthetic Lp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lli0;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor$VisitSlotsInRememberOrderCallback;
.implements Lcom/my/target/wf$b;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Lp9;->b:I

    iput-object p1, p0, Lp9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lp9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp9;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lpfa;)V
    .locals 0

    iget-object p0, p0, Lp9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wf;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/my/target/w2$b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_0
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp9;->b:I

    iget-object p0, p0, Lp9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lms5;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-static {p1}, Lts5;->d(Ljava/lang/String;)Lc57;

    move-result-object p1

    invoke-static {v0, p1}, La57;->a(ILc57;)La57;

    move-result-object p1

    invoke-static {p0, p1}, Lts5;->e(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp9;->c:Ljava/lang/Object;

    check-cast p0, Lbm0$a;

    .line 42
    invoke-virtual {p0, p1, p2}, Lbm0$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public invoke(D)D
    .locals 0

    iget-object p0, p0, Lp9;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->d(Landroidx/compose/ui/graphics/colorspace/Rgb;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public visit(IILjava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lp9;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/composer/RememberManager;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->b(Landroidx/compose/runtime/composer/RememberManager;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
