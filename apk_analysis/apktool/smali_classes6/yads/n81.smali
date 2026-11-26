.class public final Lyads/n81;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/i81;

.field public final synthetic c:Lyads/jj2;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/n81;->b:Lyads/i81;

    iput-object p3, p0, Lyads/n81;->c:Lyads/jj2;

    iput-object p4, p0, Lyads/n81;->d:Lyads/fs2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lyads/n81;->b:Lyads/i81;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/i81;->e:Lyads/tc1;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lyads/n81;->c:Lyads/jj2;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Lyads/n81;->d:Lyads/fs2;

    invoke-static {p1, v0, p0}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lyads/bl6;->setLineSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
