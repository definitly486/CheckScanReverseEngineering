.class public final Lyads/f82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/zo1;

.field public final synthetic c:Lyads/u35;

.field public final synthetic d:Lyads/p35;

.field public final synthetic e:Lyads/p35;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lyads/g82;


# direct methods
.method public constructor <init>(Lyads/zo1;Lyads/u35;Lyads/p35;Lyads/p35;Ljava/util/List;Lyads/g82;)V
    .locals 0

    iput-object p1, p0, Lyads/f82;->b:Lyads/zo1;

    iput-object p2, p0, Lyads/f82;->c:Lyads/u35;

    iput-object p3, p0, Lyads/f82;->d:Lyads/p35;

    iput-object p4, p0, Lyads/f82;->e:Lyads/p35;

    iput-object p5, p0, Lyads/f82;->f:Ljava/util/List;

    iput-object p6, p0, Lyads/f82;->g:Lyads/g82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    sget p2, Lyads/v35;->g:I

    iget-object p3, p0, Lyads/f82;->c:Lyads/u35;

    iget-object p4, p0, Lyads/f82;->d:Lyads/p35;

    iget-object p5, p0, Lyads/f82;->e:Lyads/p35;

    iget-object p2, p0, Lyads/f82;->f:Ljava/util/List;

    invoke-static {p2}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object p6

    iget-object p2, p0, Lyads/f82;->g:Lyads/g82;

    iget-object p7, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-static {p2, p7}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;)I

    move-result p7

    iget-object p2, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p8, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-virtual {p8}, Landroid/view/View;->getPaddingBottom()I

    move-result p8

    sub-int/2addr p2, p8

    iget-object p8, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-virtual {p8}, Landroid/view/View;->getPaddingTop()I

    move-result p8

    sub-int p8, p2, p8

    invoke-static/range {p3 .. p8}, Lyads/q35;->a(Lyads/u35;Lyads/p35;Lyads/p35;[III)Landroid/graphics/RadialGradient;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lyads/f82;->b:Lyads/zo1;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
