.class public final Lyads/uo5;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tt;

.field public final b:Lyads/x72;

.field public final c:Lyads/nd3;

.field public final d:Landroid/text/SpannableStringBuilder;

.field public final e:Lnl3;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/x72;Lyads/nd3;Landroid/text/SpannableStringBuilder;Lnl3;)V
    .locals 1

    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {p0, v0}, Lyads/yh1;-><init>(Lyads/vq0;)V

    iput-object p1, p0, Lyads/uo5;->a:Lyads/tt;

    iput-object p2, p0, Lyads/uo5;->b:Lyads/x72;

    iput-object p3, p0, Lyads/uo5;->c:Lyads/nd3;

    iput-object p4, p0, Lyads/uo5;->d:Landroid/text/SpannableStringBuilder;

    iput-object p5, p0, Lyads/uo5;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/uw;)V
    .locals 4

    iget-object v0, p0, Lyads/uo5;->a:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lyads/uo5;->a:Lyads/tt;

    iget-object v1, v1, Lyads/tt;->b:Lyads/fs2;

    iget-object v2, p0, Lyads/uo5;->b:Lyads/x72;

    iget-object v2, v2, Lyads/x72;->g:Lyads/as2;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lyads/uo5;->b:Lyads/x72;

    iget-object v3, v3, Lyads/x72;->h:Lyads/as2;

    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/y41;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    iget-object p1, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_7

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    iget-object p1, p0, Lyads/uo5;->c:Lyads/nd3;

    iget-object v0, p1, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object v3, p1, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    iget v0, p1, Lyads/nd3;->b:I

    iget v1, p1, Lyads/nd3;->c:I

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p1, Lyads/nd3;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    :cond_8
    iget-object p1, p0, Lyads/uo5;->e:Lnl3;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lyads/uo5;->d:Landroid/text/SpannableStringBuilder;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
