.class public final Lyads/rq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/bd2;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lyads/bd2;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/rq;->b:Landroid/view/View;

    iput-object p2, p0, Lyads/rq;->c:Landroid/view/View;

    iput-object p3, p0, Lyads/rq;->d:Lyads/bd2;

    iput-object p4, p0, Lyads/rq;->e:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lyads/rq;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lyads/rq;->d:Lyads/bd2;

    iget-object v2, v2, Lyads/bd2;->a:Lyads/ru1;

    iget-object v3, p0, Lyads/rq;->e:Lyads/fs2;

    invoke-static {v0, v1, v2, v3}, Lyads/tq;->a(Landroid/view/View;ILyads/ru1;Lyads/fs2;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lyads/rq;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lyads/rq;->d:Lyads/bd2;

    iget-object v2, v2, Lyads/bd2;->b:Lyads/ru1;

    iget-object p0, p0, Lyads/rq;->e:Lyads/fs2;

    invoke-static {v0, v1, v2, p0}, Lyads/tq;->a(Landroid/view/View;ILyads/ru1;Lyads/fs2;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
