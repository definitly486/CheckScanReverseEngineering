.class public final Lyads/lb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zo1;

.field public final b:Lyads/ml2;

.field public c:Lyads/kb;

.field public d:Lyads/sr4;

.field public e:Lyads/jb;

.field public f:Z


# direct methods
.method public constructor <init>(Lyads/zo1;Lyads/ml2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lb;->a:Lyads/zo1;

    iput-object p2, p0, Lyads/lb;->b:Lyads/ml2;

    return-void
.end method

.method public static final a(Lyads/lb;)Z
    .locals 7

    iget-object v0, p0, Lyads/lb;->e:Lyads/jb;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v2}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Lyads/lb;->f:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lyads/lb;->d:Lyads/sr4;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    iput-object v4, p0, Lyads/lb;->d:Lyads/sr4;

    iput-boolean v3, p0, Lyads/lb;->f:Z

    return v1

    :cond_3
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    iget v6, v0, Lyads/jb;->a:I

    iget v0, v0, Lyads/jb;->b:I

    add-int/2addr v0, v6

    if-gt v5, v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5
    iget-object v0, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-eq v6, v0, :cond_6

    iget-object v0, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v0, v6}, Lyads/an2;->setMaxLines(I)V

    iput-boolean v1, p0, Lyads/lb;->f:Z

    return v3

    :cond_6
    iget-object v0, p0, Lyads/lb;->d:Lyads/sr4;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_7
    iput-object v4, p0, Lyads/lb;->d:Lyads/sr4;

    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 103
    iget-object v0, p0, Lyads/lb;->d:Lyads/sr4;

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lyads/lb;->b:Lyads/ml2;

    new-instance v1, Luj;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Luj;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lyads/pq4;->a(Lyads/ml2;Lll3;)Lyads/sr4;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    iput-object v0, p0, Lyads/lb;->d:Lyads/sr4;

    return-void
.end method

.method public final a(Lyads/jb;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lyads/lb;->e:Lyads/jb;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iput-object p1, p0, Lyads/lb;->e:Lyads/jb;

    .line 109
    iget-object p1, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lyads/lb;->a()V

    .line 111
    :cond_1
    iget-object p1, p0, Lyads/lb;->c:Lyads/kb;

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 112
    :cond_2
    new-instance p1, Lyads/kb;

    invoke-direct {p1, p0}, Lyads/kb;-><init>(Lyads/lb;)V

    .line 113
    iget-object v0, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 114
    iput-object p1, p0, Lyads/lb;->c:Lyads/kb;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lyads/lb;->c:Lyads/kb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/lb;->c:Lyads/kb;

    iget-object v1, p0, Lyads/lb;->d:Lyads/sr4;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iput-object v0, p0, Lyads/lb;->d:Lyads/sr4;

    return-void
.end method
