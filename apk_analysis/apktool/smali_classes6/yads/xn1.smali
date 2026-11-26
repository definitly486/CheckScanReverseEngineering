.class public final Lyads/xn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/id1;


# instance fields
.field public final a:Lyads/vn1;

.field public final b:Lyads/zn1;


# direct methods
.method public constructor <init>(Lyads/vn1;)V
    .locals 1

    new-instance v0, Lyads/zn1;

    invoke-direct {v0}, Lyads/zn1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xn1;->a:Lyads/vn1;

    iput-object v0, p0, Lyads/xn1;->b:Lyads/zn1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vq0;Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 32
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lyads/vq0;Landroid/view/View;Lyads/p41;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lyads/xn1;->b:Lyads/zn1;

    invoke-virtual {v0, p3}, Lyads/zn1;->a(Lyads/p41;)Lyads/yn1;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lyads/wn1;

    iget-object p0, p0, Lyads/xn1;->a:Lyads/vn1;

    invoke-direct {v0, p0, p3}, Lyads/wn1;-><init>(Lyads/vn1;Lyads/yn1;)V

    new-instance p0, Lyads/oz;

    invoke-direct {p0, p1, v0}, Lyads/oz;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/p41;)Z
    .locals 0

    .line 31
    iget-object p0, p0, Lyads/xn1;->b:Lyads/zn1;

    invoke-virtual {p0, p1}, Lyads/zn1;->a(Lyads/p41;)Lyads/yn1;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
