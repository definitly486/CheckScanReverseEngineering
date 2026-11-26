.class public final Lyads/gt1;
.super Lyads/u71;
.source "SourceFile"


# instance fields
.field public final f:Lyads/tt;

.field public final g:Lyads/ws1;

.field public final h:Lll3;

.field public final i:Lll3;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/ws1;Lyads/w41;Lyads/qh2;Lll3;Lll3;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lyads/u71;-><init>(Lyads/pi2;Lyads/tt;Lyads/w41;Lyads/qh2;)V

    iput-object p1, p0, Lyads/gt1;->f:Lyads/tt;

    iput-object p2, p0, Lyads/gt1;->g:Lyads/ws1;

    iput-object p5, p0, Lyads/gt1;->h:Lll3;

    iput-object p6, p0, Lyads/gt1;->i:Lll3;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lyads/ft1;

    invoke-direct {p2, p0}, Lyads/ft1;-><init>(Lyads/gt1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 161
    sget p0, Lyads/cr3;->a:I

    .line 162
    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    .line 163
    sget p0, Lyads/rv3;->a:I

    return-void
.end method

.method public final a(Lyads/tt;Lyads/br0;ILyads/n32;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lyads/u71;->a(Lyads/tt;Lyads/br0;ILyads/n32;)V

    iget-object p3, p0, Lyads/gt1;->g:Lyads/ws1;

    invoke-virtual {p3}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    instance-of v0, p3, Lyads/ro1;

    if-eqz v0, :cond_1

    move-object p4, p3

    check-cast p4, Lyads/ro1;

    :cond_1
    if-eqz p4, :cond_10

    invoke-virtual {p2}, Lyads/br0;->a()Lyads/p41;

    move-result-object p2

    iget-object p1, p1, Lyads/tt;->b:Lyads/fs2;

    iget-object p3, p0, Lyads/gt1;->h:Lll3;

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lyads/p41;->q()Lyads/as2;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lyads/p41;->f()Lyads/as2;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lyads/gt1;->i:Lll3;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    :cond_4
    iget-object p2, p0, Lyads/gt1;->h:Lll3;

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Lyads/rr1;->f:Lyads/rr1;

    if-ne p1, p2, :cond_5

    goto :goto_3

    :cond_5
    sget-object p2, Lyads/h11;->f:Lyads/h11;

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    sget-object p2, Lyads/rr1;->g:Lyads/rr1;

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    sget-object p2, Lyads/h11;->g:Lyads/h11;

    if-ne p1, p2, :cond_8

    :goto_2
    const/16 p1, 0x50

    goto :goto_5

    :cond_8
    const/16 p1, 0x30

    goto :goto_5

    :cond_9
    sget-object p2, Lyads/rr1;->f:Lyads/rr1;

    if-ne p1, p2, :cond_a

    goto :goto_3

    :cond_a
    sget-object p2, Lyads/f11;->f:Lyads/f11;

    if-ne p1, p2, :cond_b

    :goto_3
    const/16 p1, 0x11

    goto :goto_5

    :cond_b
    sget-object p2, Lyads/rr1;->g:Lyads/rr1;

    if-ne p1, p2, :cond_c

    goto :goto_4

    :cond_c
    sget-object p2, Lyads/f11;->i:Lyads/f11;

    if-ne p1, p2, :cond_d

    :goto_4
    const p1, 0x800005

    goto :goto_5

    :cond_d
    sget-object p2, Lyads/f11;->e:Lyads/f11;

    if-ne p1, p2, :cond_e

    const/4 p1, 0x3

    goto :goto_5

    :cond_e
    sget-object p2, Lyads/f11;->g:Lyads/f11;

    if-ne p1, p2, :cond_f

    const/4 p1, 0x5

    goto :goto_5

    :cond_f
    const p1, 0x800003

    :goto_5
    iput p1, p4, Lyads/ro1;->a:I

    iget-object p0, p0, Lyads/gt1;->g:Lyads/ws1;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_10
    return-void
.end method
