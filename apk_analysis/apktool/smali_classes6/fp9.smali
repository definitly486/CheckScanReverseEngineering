.class public final synthetic Lfp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic b:Lyads/bt0;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/bt0;Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfp9;->b:Lyads/bt0;

    iput-object p2, p0, Lfp9;->c:Lyads/tt;

    iput-object p3, p0, Lfp9;->d:Landroid/view/View;

    iput-object p4, p0, Lfp9;->e:Ljava/util/List;

    iput-object p5, p0, Lfp9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v3, p0, Lfp9;->e:Ljava/util/List;

    iget-object v4, p0, Lfp9;->f:Ljava/util/List;

    iget-object v0, p0, Lfp9;->b:Lyads/bt0;

    iget-object v1, p0, Lfp9;->c:Lyads/tt;

    iget-object v2, p0, Lfp9;->d:Landroid/view/View;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lyads/bt0;->a(Lyads/bt0;Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
