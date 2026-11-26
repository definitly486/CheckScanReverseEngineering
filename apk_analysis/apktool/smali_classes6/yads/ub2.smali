.class public final Lyads/ub2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/xb2;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/qb2;

.field public final synthetic e:Lyads/tt;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lyads/xb2;Landroid/view/View;Lyads/qb2;Lyads/tt;Z)V
    .locals 0

    iput-object p1, p0, Lyads/ub2;->b:Lyads/xb2;

    iput-object p2, p0, Lyads/ub2;->c:Landroid/view/View;

    iput-object p3, p0, Lyads/ub2;->d:Lyads/qb2;

    iput-object p4, p0, Lyads/ub2;->e:Lyads/tt;

    iput-boolean p5, p0, Lyads/ub2;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/ub2;->b:Lyads/xb2;

    iget-object p2, p0, Lyads/ub2;->c:Landroid/view/View;

    iget-object p3, p0, Lyads/ub2;->d:Lyads/qb2;

    iget-object p4, p0, Lyads/ub2;->e:Lyads/tt;

    iget-boolean p0, p0, Lyads/ub2;->f:Z

    invoke-virtual {p1, p2, p3, p4, p0}, Lyads/xb2;->a(Landroid/view/View;Lyads/qb2;Lyads/tt;Z)V

    return-void
.end method
