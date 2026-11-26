.class public final synthetic Lgp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lyads/bt0;

.field public final synthetic c:Lyads/xr0;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/as2;

.field public final synthetic f:Lyads/nr4;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/bt0;Lyads/xr0;Lyads/tt;Lyads/as2;Lyads/nr4;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgp9;->b:Lyads/bt0;

    iput-object p2, p0, Lgp9;->c:Lyads/xr0;

    iput-object p3, p0, Lgp9;->d:Lyads/tt;

    iput-object p4, p0, Lgp9;->e:Lyads/as2;

    iput-object p5, p0, Lgp9;->f:Lyads/nr4;

    iput-object p6, p0, Lgp9;->g:Landroid/view/View;

    iput-object p7, p0, Lgp9;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 8

    iget-object v5, p0, Lgp9;->g:Landroid/view/View;

    iget-object v6, p0, Lgp9;->h:Ljava/util/List;

    iget-object v0, p0, Lgp9;->b:Lyads/bt0;

    iget-object v1, p0, Lgp9;->c:Lyads/xr0;

    iget-object v2, p0, Lgp9;->d:Lyads/tt;

    iget-object v3, p0, Lgp9;->e:Lyads/as2;

    iget-object v4, p0, Lgp9;->f:Lyads/nr4;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lyads/bt0;->a(Lyads/bt0;Lyads/xr0;Lyads/tt;Lyads/as2;Lyads/nr4;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
