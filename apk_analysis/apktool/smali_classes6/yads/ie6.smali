.class public final Lyads/ie6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Lyads/nf6;

.field public final b:Lyads/ze;

.field public final c:Lyads/n90;


# direct methods
.method public constructor <init>(Lyads/nf6;)V
    .locals 2

    new-instance v0, Lyads/ze;

    invoke-direct {v0}, Lyads/ze;-><init>()V

    new-instance v1, Lyads/n90;

    invoke-direct {v1}, Lyads/n90;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ie6;->a:Lyads/nf6;

    iput-object v0, p0, Lyads/ie6;->b:Lyads/ze;

    iput-object v1, p0, Lyads/ie6;->c:Lyads/n90;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    iget-object v0, p0, Lyads/ie6;->a:Lyads/nf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyads/am4;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lyads/am4;->c:Lyads/sk4;

    iget-object v1, v1, Lyads/sk4;->b:Lyads/wz3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/wz3;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lyads/ie6;->b:Lyads/ze;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, p3, p4}, Lyads/ze;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_1
    iget-object v0, v0, Lyads/am4;->c:Lyads/sk4;

    iget-object v0, v0, Lyads/sk4;->b:Lyads/wz3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lyads/wz3;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p0, Lyads/ie6;->c:Lyads/n90;

    sub-long/2addr p1, p3

    iget-object p0, p0, Lyads/n90;->a:Lyads/h15;

    invoke-static {p1, p2}, Lyads/h15;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
