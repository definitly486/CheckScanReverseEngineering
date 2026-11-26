.class public final Lyads/u16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/r16;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lyads/u16;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/u16;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-static {p1}, Landroidx/core/view/ViewKt;->getAllViews(Landroid/view/View;)Lzo7;

    move-result-object p0

    sget-object p1, Lyads/t16;->b:Lyads/t16;

    invoke-static {p0, p1}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    new-instance p1, Lpa3$a;

    invoke-direct {p1, p0}, Lpa3$a;-><init>(Lpa3;)V

    :goto_0
    invoke-virtual {p1}, Lpa3$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lpa3$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/s51;

    invoke-interface {p0}, Lyads/s51;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lyads/u16;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lyads/u16;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-static {p1}, Landroidx/core/view/ViewKt;->getAllViews(Landroid/view/View;)Lzo7;

    move-result-object p0

    sget-object p1, Lyads/t16;->b:Lyads/t16;

    invoke-static {p0, p1}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    new-instance p1, Lpa3$a;

    invoke-direct {p1, p0}, Lpa3$a;-><init>(Lpa3;)V

    :goto_0
    invoke-virtual {p1}, Lpa3$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lpa3$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/s51;

    invoke-interface {p0}, Lyads/s51;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 0

    iget p0, p0, Lyads/u16;->a:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
