.class public final synthetic Lcfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/v41;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Lyads/p41;

.field public final synthetic f:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/v41;Landroid/view/View;Lyads/vq0;Lyads/p41;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfa;->b:Lyads/v41;

    iput-object p2, p0, Lcfa;->c:Landroid/view/View;

    iput-object p3, p0, Lcfa;->d:Lyads/vq0;

    iput-object p4, p0, Lcfa;->e:Lyads/p41;

    iput-object p5, p0, Lcfa;->f:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lcfa;->f:Lyads/fs2;

    move-object v5, p1

    check-cast v5, Lyads/ri2;

    iget-object v0, p0, Lcfa;->b:Lyads/v41;

    iget-object v1, p0, Lcfa;->c:Landroid/view/View;

    iget-object v2, p0, Lcfa;->d:Lyads/vq0;

    iget-object v3, p0, Lcfa;->e:Lyads/p41;

    invoke-static/range {v0 .. v5}, Lyads/v41;->a(Lyads/v41;Landroid/view/View;Lyads/vq0;Lyads/p41;Lyads/fs2;Lyads/ri2;)Lj59;

    move-result-object p0

    return-object p0
.end method
