.class public final Lyads/aj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/vq0;

.field public final synthetic c:Lyads/qb1;

.field public final synthetic d:Lyads/bj2;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lyads/fs2;

.field public final synthetic g:Lyads/br0;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/qb1;Lyads/bj2;Landroid/view/View;Lyads/fs2;Lyads/br0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lyads/aj2;->b:Lyads/vq0;

    iput-object p2, p0, Lyads/aj2;->c:Lyads/qb1;

    iput-object p3, p0, Lyads/aj2;->d:Lyads/bj2;

    iput-object p4, p0, Lyads/aj2;->e:Landroid/view/View;

    iput-object p5, p0, Lyads/aj2;->f:Lyads/fs2;

    iput-object p6, p0, Lyads/aj2;->g:Lyads/br0;

    iput-object p7, p0, Lyads/aj2;->h:Ljava/util/List;

    iput-object p8, p0, Lyads/aj2;->i:Ljava/util/List;

    iput-object p9, p0, Lyads/aj2;->j:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/aj2;->b:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->O:Lyads/qb1;

    iget-object p2, p0, Lyads/aj2;->c:Lyads/qb1;

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/aj2;->d:Lyads/bj2;

    iget-object p2, p1, Lyads/bj2;->f:Lyads/kk5;

    iget-object p3, p0, Lyads/aj2;->e:Landroid/view/View;

    iget-object p4, p0, Lyads/aj2;->b:Lyads/vq0;

    iget-object p5, p0, Lyads/aj2;->f:Lyads/fs2;

    iget-object p1, p0, Lyads/aj2;->g:Lyads/br0;

    iget-object v0, p0, Lyads/aj2;->h:Ljava/util/List;

    move-object p6, p1

    move-object p7, v0

    invoke-virtual/range {p2 .. p7}, Lyads/kk5;->a(Landroid/view/View;Lyads/vq0;Lyads/fs2;Lyads/br0;Ljava/util/List;)V

    iget-object v1, p0, Lyads/aj2;->d:Lyads/bj2;

    iget-object v2, p0, Lyads/aj2;->b:Lyads/vq0;

    iget-object v3, p0, Lyads/aj2;->f:Lyads/fs2;

    iget-object v4, p0, Lyads/aj2;->e:Landroid/view/View;

    iget-object v5, p0, Lyads/aj2;->g:Lyads/br0;

    iget-object p1, p0, Lyads/aj2;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object p1, p0, Lyads/aj2;->d:Lyads/bj2;

    iget-object p2, p0, Lyads/aj2;->j:Ljava/util/List;

    iget-object p3, p0, Lyads/aj2;->f:Lyads/fs2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lyads/aj2;->d:Lyads/bj2;

    iget-object p1, p1, Lyads/bj2;->h:Ljava/util/WeakHashMap;

    iget-object p0, p0, Lyads/aj2;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
