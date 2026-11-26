.class public final synthetic Lul0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lyads/ci4;
.implements Lcom/my/target/wf$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lul0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lpfa;)V
    .locals 1

    iget-object p0, p0, Lul0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wf$a;

    sget v0, Lcom/my/target/wj;->k:I

    check-cast p0, Lml0;

    iget-object p0, p0, Lml0;->c:Ljava/lang/Object;

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

.method public a(Lyads/dh4;)Z
    .locals 0

    .line 29
    iget-object p0, p0, Lul0;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ae4;

    invoke-static {p0, p1}, Lyads/ae4;->c(Lyads/ae4;Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lul0;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0
.end method

.method public invoke(D)D
    .locals 0

    iget-object p0, p0, Lul0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->b(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method
