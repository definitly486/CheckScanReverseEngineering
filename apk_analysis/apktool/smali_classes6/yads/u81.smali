.class public final Lyads/u81;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/yc1;

.field public final synthetic c:Lyads/a91;

.field public final synthetic d:Lyads/op1;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/yc1;Lyads/fs2;Lyads/a91;Lyads/op1;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/u81;->b:Lyads/yc1;

    iput-object p3, p0, Lyads/u81;->c:Lyads/a91;

    iput-object p4, p0, Lyads/u81;->d:Lyads/op1;

    iput-object p5, p0, Lyads/u81;->e:Lyads/fs2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lyads/u81;->b:Lyads/yc1;

    iget-object v0, p0, Lyads/u81;->c:Lyads/a91;

    iget-object v1, p0, Lyads/u81;->d:Lyads/op1;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lyads/u81;->e:Lyads/fs2;

    invoke-static {v0, p1, v1, v2}, Lyads/a91;->a(Lyads/a91;Lyads/yc1;Landroid/content/res/Resources;Lyads/fs2;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lyads/u81;->d:Lyads/op1;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lyads/gt3;->setDividerMargins(IIII)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
