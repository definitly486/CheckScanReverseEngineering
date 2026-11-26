.class public final Lyads/kk4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/aa5;

.field public final b:Lyads/n03;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lyads/ux5;Lyads/sj4;Lyads/bx5;)V
    .locals 1

    new-instance v0, Lyads/aa5;

    invoke-direct {v0, p1}, Lyads/aa5;-><init>(Lyads/ux5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/kk4;->a:Lyads/aa5;

    new-instance p1, Lyads/jk4;

    invoke-direct {p1, p0}, Lyads/jk4;-><init>(Lyads/kk4;)V

    iget-object v0, p2, Lyads/sj4;->a:Lyads/el4;

    iget-object p2, p2, Lyads/sj4;->b:Lyads/lm4;

    if-eqz v0, :cond_0

    new-instance p2, Lyads/xl4;

    invoke-direct {p2, v0, p1, p3}, Lyads/xl4;-><init>(Lyads/el4;Lyads/jk4;Lyads/bx5;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lyads/qm4;

    invoke-direct {v0, p2, p1, p3}, Lyads/qm4;-><init>(Lyads/lm4;Lyads/jk4;Lyads/bx5;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance p2, Lyads/xi4;

    invoke-direct {p2, p1, p3}, Lyads/xi4;-><init>(Lyads/jk4;Lyads/bx5;)V

    :goto_0
    iput-object p2, p0, Lyads/kk4;->b:Lyads/n03;

    return-void
.end method
