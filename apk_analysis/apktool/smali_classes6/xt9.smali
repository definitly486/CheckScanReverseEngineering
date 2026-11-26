.class public final synthetic Lxt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/e41;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Landroid/graphics/drawable/Drawable;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxt9;->b:Lyads/e41;

    iput-object p2, p0, Lxt9;->c:Landroid/view/View;

    iput-object p3, p0, Lxt9;->d:Lyads/tt;

    iput-object p4, p0, Lxt9;->e:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lxt9;->f:Ljava/util/List;

    iput-object p6, p0, Lxt9;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v4, p0, Lxt9;->f:Ljava/util/List;

    iget-object v5, p0, Lxt9;->g:Ljava/util/List;

    iget-object v0, p0, Lxt9;->b:Lyads/e41;

    iget-object v1, p0, Lxt9;->c:Landroid/view/View;

    iget-object v2, p0, Lxt9;->d:Lyads/tt;

    iget-object v3, p0, Lxt9;->e:Landroid/graphics/drawable/Drawable;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lyads/e41;->a(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
