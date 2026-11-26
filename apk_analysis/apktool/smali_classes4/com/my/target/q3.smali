.class public final Lcom/my/target/q3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final b:Lcom/my/target/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/my/target/q3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/q3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/my/target/m;

    invoke-direct {p2, p1}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/q3;->b:Lcom/my/target/m;

    const/4 p3, 0x2

    invoke-static {p3, p1}, Ll3a;->d(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    const/16 p3, 0x11

    invoke-static {p3, p1}, Ll3a;->d(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/my/target/m;->setFixedHeight(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdChoicesView()Lcom/my/target/m;
    .locals 0

    iget-object p0, p0, Lcom/my/target/q3;->b:Lcom/my/target/m;

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
