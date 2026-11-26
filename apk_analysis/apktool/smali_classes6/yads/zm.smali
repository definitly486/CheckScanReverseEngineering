.class public final Lyads/zm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/an2;

.field public b:Z

.field public c:Lyads/ml2;

.field public d:Lyads/sr4;


# direct methods
.method public constructor <init>(Lyads/an2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zm;->a:Lyads/an2;

    sget-object p1, Lyads/ll2;->b:Lyads/ll2;

    iput-object p1, p0, Lyads/zm;->c:Lyads/ml2;

    return-void
.end method

.method public static final a(Lyads/zm;)Z
    .locals 6

    iget-boolean v0, p0, Lyads/zm;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lyads/tt5;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lyads/tt5;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    :goto_0
    add-int/lit8 v5, v3, 0x1

    invoke-static {v0, v5}, Lyads/ow5;->a(Landroid/widget/TextView;I)I

    move-result v0

    if-lt v2, v0, :cond_2

    move v3, v5

    :cond_2
    if-lez v3, :cond_3

    iget-object v0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    iget-object p0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {p0, v3}, Lyads/an2;->setMaxLines(I)V

    return v4

    :cond_3
    iget-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lyads/zm;->d:Lyads/sr4;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    :cond_4
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 90
    iget-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lyads/zm;->c:Lyads/ml2;

    new-instance v1, Lff;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lff;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lyads/pq4;->a(Lyads/ml2;Lll3;)Lyads/sr4;

    move-result-object v0

    iput-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    .line 92
    iget-object v0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lyads/zm;->d:Lyads/sr4;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
