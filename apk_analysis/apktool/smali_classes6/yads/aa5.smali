.class public final Lyads/aa5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ux5;

.field public final b:Lyads/yv5;


# direct methods
.method public constructor <init>(Lyads/ux5;)V
    .locals 1

    new-instance v0, Lyads/yv5;

    invoke-direct {v0}, Lyads/yv5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/aa5;->a:Lyads/ux5;

    iput-object v0, p0, Lyads/aa5;->b:Lyads/yv5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lyads/aa5;->a:Lyads/ux5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "timer_value"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lyads/aa5;->b:Lyads/yv5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long/2addr p2, p4

    long-to-float p0, p2

    sget-wide p2, Lyads/yv5;->a:J

    long-to-float p2, p2

    div-float/2addr p0, p2

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
