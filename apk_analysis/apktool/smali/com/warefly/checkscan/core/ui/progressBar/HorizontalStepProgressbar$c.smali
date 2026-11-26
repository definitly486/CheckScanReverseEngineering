.class public final Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Landroid/text/TextPaint;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;->f:Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;->g:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, 0x7f0604b7

    iget-object v2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;->f:Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f09000e

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;->g:Landroid/content/Context;

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method
