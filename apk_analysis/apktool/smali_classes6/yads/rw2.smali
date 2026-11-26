.class public final Lyads/rw2;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/hc3;

.field public final d:Ly22;

.field public e:Lmb4;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lyads/hc3;Ly22;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/rw2;->c:Lyads/hc3;

    iput-object p3, p0, Lyads/rw2;->d:Ly22;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lyads/mw2;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lyads/mw2;

    iget-object p2, p2, Lyads/mw2;->a:Lyads/rd3;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lyads/rw2;->e:Lmb4;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object p1, p0, Lyads/rw2;->d:Ly22;

    new-instance v1, Lyads/qw2;

    invoke-direct {v1, p0, p2, v0}, Lyads/qw2;-><init>(Lyads/rw2;Lyads/rd3;Le02;)V

    const/4 p2, 0x3

    invoke-static {p1, v0, v0, v1, p2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lyads/rw2;->e:Lmb4;

    return-void
.end method
