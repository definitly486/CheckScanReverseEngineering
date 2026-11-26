.class public final synthetic Lx0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/kk5;

.field public final synthetic c:Lyads/vq0;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lyads/br0;

.field public final synthetic g:Lyads/r02;


# direct methods
.method public synthetic constructor <init>(Lyads/kk5;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0a;->b:Lyads/kk5;

    iput-object p2, p0, Lx0a;->c:Lyads/vq0;

    iput-object p3, p0, Lx0a;->d:Lyads/fs2;

    iput-object p4, p0, Lx0a;->e:Landroid/view/View;

    iput-object p5, p0, Lx0a;->f:Lyads/br0;

    iput-object p6, p0, Lx0a;->g:Lyads/r02;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lx0a;->b:Lyads/kk5;

    iget-object v1, p0, Lx0a;->c:Lyads/vq0;

    iget-object v2, p0, Lx0a;->d:Lyads/fs2;

    iget-object v3, p0, Lx0a;->e:Landroid/view/View;

    iget-object v4, p0, Lx0a;->f:Lyads/br0;

    iget-object v5, p0, Lx0a;->g:Lyads/r02;

    invoke-static/range {v0 .. v6}, Lyads/kk5;->a(Lyads/kk5;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
