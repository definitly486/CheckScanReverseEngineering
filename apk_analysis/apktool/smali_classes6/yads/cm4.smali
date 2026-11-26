.class public final Lyads/cm4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/td6;

.field public final b:Lyads/yk4;

.field public final c:D


# direct methods
.method public constructor <init>(Lyads/gr2;Lyads/td6;)V
    .locals 4

    new-instance v0, Lyads/yk4;

    invoke-direct {v0, p1}, Lyads/yk4;-><init>(Lyads/gr2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/cm4;->a:Lyads/td6;

    iput-object v0, p0, Lyads/cm4;->b:Lyads/yk4;

    iget-object p1, p2, Lyads/td6;->d:Ljava/lang/Double;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    iput-wide p1, p0, Lyads/cm4;->c:D

    return-void
.end method

.method public static final a(Lyads/cm4;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-wide p1, p0, Lyads/cm4;->c:D

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 65
    :goto_0
    iget-object p0, p0, Lyads/cm4;->b:Lyads/yk4;

    .line 66
    iget-object p0, p0, Lyads/yk4;->a:Lyads/gr2;

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lyads/gr2;->a(F)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/wz3;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lyads/wz3;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v3, Lur9;

    invoke-direct {v3, p0, v0}, Lur9;-><init>(Lyads/cm4;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lyads/cm4;->a:Lyads/td6;

    iget-boolean v3, v3, Lyads/td6;->b:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-interface {p1}, Lyads/wz3;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lyads/cm4;->a:Lyads/td6;

    iget-boolean p0, p0, Lyads/td6;->c:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-interface {p1}, Lyads/wz3;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
