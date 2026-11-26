.class public final synthetic Lgn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/a91;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/j81;

.field public final synthetic e:Lyads/p41;

.field public final synthetic f:Lyads/fs2;

.field public final synthetic g:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/a91;Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgn9;->b:Lyads/a91;

    iput-object p2, p0, Lgn9;->c:Landroid/view/View;

    iput-object p3, p0, Lgn9;->d:Lyads/j81;

    iput-object p4, p0, Lgn9;->e:Lyads/p41;

    iput-object p5, p0, Lgn9;->f:Lyads/fs2;

    iput-object p6, p0, Lgn9;->g:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v4, p0, Lgn9;->f:Lyads/fs2;

    iget-object v5, p0, Lgn9;->g:Lyads/fs2;

    iget-object v0, p0, Lgn9;->b:Lyads/a91;

    iget-object v1, p0, Lgn9;->c:Landroid/view/View;

    iget-object v2, p0, Lgn9;->d:Lyads/j81;

    iget-object v3, p0, Lgn9;->e:Lyads/p41;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lyads/a91;->a(Lyads/a91;Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
