.class public final Lyads/lq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qh2;

.field public final b:Lyads/w41;

.field public final c:Lyads/my1;


# direct methods
.method public constructor <init>(Lyads/qh2;Lyads/w41;Lyads/my1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lq0;->a:Lyads/qh2;

    iput-object p2, p0, Lyads/lq0;->b:Lyads/w41;

    iput-object p3, p0, Lyads/lq0;->c:Lyads/my1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/br0;Lyads/tt;Lyads/n32;)Landroid/view/View;
    .locals 4

    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    iget-object v1, p0, Lyads/lq0;->c:Lyads/my1;

    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lyads/vq0;->z:Lyads/ub5;

    invoke-interface {v2}, Lyads/ub5;->a()Lyads/ms2;

    move-result-object v2

    iget-object v3, v2, Lyads/ms2;->b:Lyads/d26;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lyads/d26;->b(Lyads/vq0;)V

    :cond_0
    invoke-virtual {v1, p1, p2, p3, v2}, Lyads/my1;->b(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    iget-object p0, p0, Lyads/lq0;->a:Lyads/qh2;

    invoke-virtual {p0, p1, v0}, Lyads/qh2;->c(Lyads/br0;Lyads/fs2;)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lyads/ro1;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Lyads/ro1;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method
