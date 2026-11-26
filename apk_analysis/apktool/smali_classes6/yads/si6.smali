.class public final Lyads/si6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ld4;


# direct methods
.method public constructor <init>(Lyads/ld4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/si6;->a:Lyads/ld4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/instream/view/InstreamMuteView;Z)V
    .locals 2

    iget-object p0, p0, Lyads/si6;->a:Lyads/ld4;

    if-eqz p2, :cond_0

    iget v0, p0, Lyads/ld4;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lyads/ld4;->b:I

    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget p0, p0, Lyads/ld4;->c:I

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget p0, p0, Lyads/ld4;->d:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void
.end method
