.class public Lcom/my/target/instreamads/qrcta/view/QrCtaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/my/target/instreamads/qrcta/view/QrCtaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/instreamads/qrcta/view/QrCtaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->b:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->d:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->e:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->f:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->g:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41c00000    # 24.0f

    const/4 p2, 0x2

    invoke-virtual {v1, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p3, 0x41900000    # 18.0f

    invoke-virtual {v2, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lh14;Landroid/widget/ImageView;II)V
    .locals 6

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p2, Ls0a;->c:Ljava/util/WeakHashMap;

    sget-object p2, Lpp9;->d:Lpp9;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p2}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object p2

    new-instance v0, Lyu6;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lyu6;-><init>(Lcom/my/target/instreamads/qrcta/view/QrCtaView;Lh14;IILjava/lang/ref/WeakReference;)V

    iput-object v0, p2, Ls0a;->b:Ls0a$b;

    iget-object p0, p2, Ls0a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p2, Ls0a;->b:Ls0a$b;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkc2;

    const/4 p1, 0x4

    invoke-direct {p0, p2, p1}, Lkc2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, La4;

    invoke-direct {p0, p2}, La4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Ls0a;->b(Ls0a$b;)V

    return-void
.end method

.method public setQrCta(Lxu6;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->a:[I

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->h:[I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->g:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->f:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->e:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->d:[I

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->c:[I

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/my/target/instreamads/qrcta/view/QrCtaView$a;->b:[I

    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0xc

    goto :goto_1

    :cond_1
    const/16 p1, 0x28

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x24

    const/16 v3, 0x14

    invoke-virtual {v0, v2, p1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setQrCtaAdditionalTextStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setQrCtaTitleTextStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/instreamads/qrcta/view/QrCtaView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
