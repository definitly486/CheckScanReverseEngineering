.class public final synthetic Lbp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


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

    iput-object p1, p0, Lbp9;->b:Lyads/bt0;

    iput-object p2, p0, Lbp9;->c:Lyads/tt;

    iput-object p3, p0, Lbp9;->d:Landroid/view/View;

    iput-object p4, p0, Lbp9;->e:Ljava/util/List;

    iput-object p5, p0, Lbp9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroid/view/View;

    move-object v6, p2

    check-cast v6, Landroid/view/MotionEvent;

    iget-object v0, p0, Lbp9;->b:Lyads/bt0;

    iget-object v1, p0, Lbp9;->c:Lyads/tt;

    iget-object v2, p0, Lbp9;->d:Landroid/view/View;

    iget-object v3, p0, Lbp9;->e:Ljava/util/List;

    iget-object v4, p0, Lbp9;->f:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lyads/bt0;->b(Lyads/bt0;Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
