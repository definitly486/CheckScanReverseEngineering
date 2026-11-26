.class public final Lyads/y05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lyads/y05;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lyads/y05;->b:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/y05;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/y05;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
