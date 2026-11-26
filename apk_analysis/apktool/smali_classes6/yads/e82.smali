.class public final Lyads/e82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/zo1;

.field public final synthetic c:J

.field public final synthetic d:Lyads/y30;

.field public final synthetic e:Lyads/g82;


# direct methods
.method public constructor <init>(Lyads/zo1;JLyads/y30;Lyads/g82;)V
    .locals 0

    iput-object p1, p0, Lyads/e82;->b:Lyads/zo1;

    iput-wide p2, p0, Lyads/e82;->c:J

    iput-object p4, p0, Lyads/e82;->d:Lyads/y30;

    iput-object p5, p0, Lyads/e82;->e:Lyads/g82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    sget p2, Lyads/lt3;->e:I

    iget-wide p2, p0, Lyads/e82;->c:J

    long-to-float p2, p2

    iget-object p3, p0, Lyads/e82;->d:Lyads/y30;

    iget-object p4, p3, Lyads/y30;->a:[I

    iget-object p3, p3, Lyads/y30;->b:[F

    iget-object p5, p0, Lyads/e82;->e:Lyads/g82;

    iget-object p6, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-static {p5, p6}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;)I

    move-result p5

    iget-object p6, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result p6

    iget-object p7, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-virtual {p7}, Landroid/view/View;->getPaddingBottom()I

    move-result p7

    sub-int/2addr p6, p7

    iget-object p7, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-virtual {p7}, Landroid/view/View;->getPaddingTop()I

    move-result p7

    sub-int/2addr p6, p7

    invoke-static {p2, p4, p3, p5, p6}, Lyads/kt3;->a(F[I[FII)Landroid/graphics/LinearGradient;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lyads/e82;->b:Lyads/zo1;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
