.class public final Lyads/xv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bb6;


# instance fields
.field public a:Lyads/bb6;

.field public final synthetic b:Lyads/yv4;


# direct methods
.method public constructor <init>(Lyads/yv4;)V
    .locals 0

    iput-object p1, p0, Lyads/xv4;->b:Lyads/yv4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/xv4;->a:Lyads/bb6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/bb6;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyads/xv4;->b:Lyads/yv4;

    iget-object v0, v0, Lyads/yv4;->a:Lyads/nf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyads/am4;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/am4;->c:Lyads/sk4;

    iget-object v1, p0, Lyads/xv4;->b:Lyads/yv4;

    iget-object v1, v1, Lyads/yv4;->c:Lyads/cm4;

    iget-object v0, v0, Lyads/sk4;->b:Lyads/wz3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lyads/wz3;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-interface {v0}, Lyads/wz3;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-interface {v0}, Lyads/wz3;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lyads/xv4;->a:Lyads/bb6;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lyads/bb6;->b()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/xv4;->b:Lyads/yv4;

    iget-object v0, v0, Lyads/yv4;->a:Lyads/nf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyads/am4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/xv4;->b:Lyads/yv4;

    iget-object v1, v1, Lyads/yv4;->d:Lyads/ge6;

    invoke-virtual {v1, v0}, Lyads/ge6;->a(Lyads/am4;)V

    :cond_0
    iget-object p0, p0, Lyads/xv4;->a:Lyads/bb6;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/bb6;->c()V

    :cond_1
    return-void
.end method
