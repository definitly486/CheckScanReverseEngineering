.class public final Lyads/a32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/c32;

.field public final synthetic c:Lyads/vq0;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lyads/br0;


# direct methods
.method public constructor <init>(Lyads/c32;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V
    .locals 0

    iput-object p1, p0, Lyads/a32;->b:Lyads/c32;

    iput-object p2, p0, Lyads/a32;->c:Lyads/vq0;

    iput-object p3, p0, Lyads/a32;->d:Lyads/fs2;

    iput-object p4, p0, Lyads/a32;->e:Landroid/view/View;

    iput-object p5, p0, Lyads/a32;->f:Lyads/br0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/a32;->b:Lyads/c32;

    iget-object p1, p1, Lyads/c32;->k:Lyads/bj2;

    iget-object p2, p0, Lyads/a32;->c:Lyads/vq0;

    iget-object p3, p0, Lyads/a32;->d:Lyads/fs2;

    iget-object p4, p0, Lyads/a32;->e:Landroid/view/View;

    iget-object p0, p0, Lyads/a32;->f:Lyads/br0;

    invoke-static {p1, p2, p3, p4, p0}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    return-void
.end method
