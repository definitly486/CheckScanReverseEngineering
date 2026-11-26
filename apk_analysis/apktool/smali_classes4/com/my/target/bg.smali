.class public Lcom/my/target/bg;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lnn9;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/bg$b;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public final b:Lcom/my/target/zh;

.field public final c:Lcom/my/target/rh;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/Button;

.field public final j:Lcom/my/target/c3;

.field public final k:Lcom/my/target/c1;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lon9;

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:Lcom/my/target/bg$b;

.field public w:Z

.field public x:Le6a;

.field public y:Z


# direct methods
.method public constructor <init>(Lon9;Landroid/content/Context;Lcom/my/target/c3;)V
    .locals 11

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/my/target/c1;

    new-instance v1, Lx52;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lx52;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v0, p0, Lcom/my/target/bg;->k:Lcom/my/target/c1;

    sget-object v0, Lcom/my/target/bg$b;->a:Lcom/my/target/bg$b;

    iput-object v0, p0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/bg;->x:Le6a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/bg;->y:Z

    iput-object p3, p0, Lcom/my/target/bg;->j:Lcom/my/target/c3;

    iput-object p1, p0, Lcom/my/target/bg;->r:Lon9;

    sget p3, Lon9;->F:I

    iget-object p1, p1, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->l:I

    sget p3, Lon9;->G:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->m:I

    sget p3, Lon9;->H:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->u:I

    sget p3, Lon9;->I:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->n:I

    sget p3, Lon9;->o:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->o:I

    sget p3, Lon9;->n:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->p:I

    sget p3, Lon9;->N:I

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    iput p3, p0, Lcom/my/target/bg;->s:I

    sget v1, Lon9;->U:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v2, Lon9;->T:I

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, p0, Lcom/my/target/bg;->q:I

    invoke-static {p3, p2}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/my/target/bg;->t:I

    new-instance v2, Lcom/my/target/zh;

    invoke-direct {v2, p2}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    new-instance v3, Lcom/my/target/rh;

    invoke-direct {v3, p2}, Lcom/my/target/rh;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    sget v6, Lon9;->J:I

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    sget v8, Lon9;->L:I

    invoke-virtual {p1, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v8, Lon9;->M:I

    invoke-virtual {p1, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    int-to-float p3, p3

    invoke-virtual {v8, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    invoke-virtual {v9, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance p3, Landroid/widget/Button;

    invoke-direct {p3, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setLines(I)V

    sget v10, Lon9;->w:I

    invoke-virtual {p1, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p3, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v1, Lon9;->x:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {p3, v6, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    sget p2, Lon9;->y:I

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {v1, p2, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget p2, Lon9;->B:I

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget p2, Lon9;->C:I

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "panel_icon"

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v2, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "panel_title"

    invoke-virtual {v4, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v4, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "panel_description"

    invoke-virtual {v7, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v7, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "panel_domain"

    invoke-virtual {v8, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v8, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "panel_rating"

    invoke-virtual {v9, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v9, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "panel_cta"

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p3, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "age_bordering"

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v1, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setClickArea(Lt2a;)V
    .locals 9

    iget-object v0, p0, Lcom/my/target/bg;->k:Lcom/my/target/c1;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v0, p1, Lt2a;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-boolean v0, p1, Lt2a;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-boolean v0, p1, Lt2a;->b:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-boolean v0, p1, Lt2a;->e:Z

    if-eqz v0, :cond_6

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget-boolean v0, p1, Lt2a;->j:Z

    if-eqz v0, :cond_7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-boolean p1, p1, Lt2a;->h:Z

    if-eqz p1, :cond_8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClickAreaLegacy(Lt2a;)V
    .locals 4

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-object v1, p0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v0, p1, Lt2a;->a:Z

    iget-object v2, p0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-boolean v0, p1, Lt2a;->c:Z

    iget-object v2, p0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    if-eqz v0, :cond_4

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-boolean v0, p1, Lt2a;->b:Z

    iget-object v2, p0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-boolean v0, p1, Lt2a;->e:Z

    iget-object v2, p0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    iget-object v3, p0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget-boolean v0, p1, Lt2a;->j:Z

    iget-object v2, p0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-boolean p1, p1, Lt2a;->h:Z

    iget-object v0, p0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/my/target/bg;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/my/target/bg;->j:Lcom/my/target/c3;

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    const/16 v4, 0x40

    iget-object v5, p0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    if-ne p1, v5, :cond_0

    iget-object p0, p0, Lcom/my/target/bg;->x:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v4, p0}, Lup9;-><init>(ILe6a;)V

    invoke-virtual {v3, v1, v0, p1}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    if-ne p1, v4, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x20

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x10

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    const/16 v0, 0x200

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    const/16 v0, 0x80

    goto :goto_0

    :cond_8
    const/16 v0, 0x800

    :goto_0
    iget-object p0, p0, Lcom/my/target/bg;->x:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v0, p0}, Lup9;-><init>(ILe6a;)V

    invoke-virtual {v3, v1, v2, p1}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_9
    new-instance p0, Lgia;

    invoke-direct {p0}, Lgia;-><init>()V

    invoke-virtual {v3, v1, v2, p0}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Lcom/my/target/bg$a;->a:[I

    iget-object v6, v0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    iget-object v9, v0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    iget v11, v0, Lcom/my/target/bg;->m:I

    iget-object v12, v0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    iget-object v13, v0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    iget v14, v0, Lcom/my/target/bg;->n:I

    const/4 v15, 0x1

    if-eq v5, v15, :cond_2

    const/16 p1, 0x2

    iget-object v10, v0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    if-eq v5, v7, :cond_1

    invoke-static {v12, v11, v11}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v5, v11, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    filled-new-array {v0, v4, v2}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    add-int v2, p3, v11

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v4

    filled-new-array {v2, v4}, [I

    move-result-object v2

    invoke-static {v2}, Ll3a;->e([I)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v4, v8

    sub-int/2addr v4, v14

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v13, v5, v2, v4, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v14

    add-int/2addr v4, v0

    div-int/lit8 v11, v11, 0x4

    new-array v0, v7, [Landroid/view/View;

    aput-object v3, v0, v6

    aput-object v9, v0, v15

    aput-object v1, v0, p1

    invoke-static {v2, v5, v4, v11, v0}, Ll3a;->g(IIII[Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v14

    invoke-static {v10, v0, v1}, Ll3a;->u(Landroid/view/View;II)V

    return-void

    :cond_1
    sub-int v5, p5, p3

    iget v0, v0, Lcom/my/target/bg;->u:I

    sub-int/2addr v5, v0

    invoke-static {v12, v5, v0}, Ll3a;->u(Landroid/view/View;II)V

    sub-int v16, p4, p2

    sub-int v0, v16, v0

    invoke-static {v8, v5, v0}, Ll3a;->s(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    filled-new-array {v5, v4, v2}, [I

    move-result-object v2

    invoke-static {v2}, Ll3a;->e([I)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v4

    filled-new-array {v4, v14}, [I

    move-result-object v4

    invoke-static {v4}, Ll3a;->e([I)I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    sub-int/2addr v5, v14

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v13, v0, v5, v4, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v14

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v14

    add-int/2addr v5, v2

    div-int/lit8 v2, v11, 0x4

    new-array v7, v7, [Landroid/view/View;

    aput-object v3, v7, v6

    aput-object v9, v7, v15

    aput-object v1, v7, p1

    invoke-static {v4, v0, v5, v2, v7}, Ll3a;->g(IIII[Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v1

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    invoke-static {v10, v0, v11}, Ll3a;->u(Landroid/view/View;II)V

    return-void

    :cond_2
    const/16 p1, 0x2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_3

    move v4, v2

    move v5, v15

    goto :goto_0

    :cond_3
    move v4, v6

    move v5, v4

    :goto_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-lez v10, :cond_4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v10

    :cond_4
    iget-object v0, v0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    if-lez v16, :cond_5

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v16

    :cond_5
    move/from16 v17, v15

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v7

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-lez v15, :cond_7

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v15

    :cond_7
    sub-int v18, p5, p3

    sub-int v18, v18, v4

    div-int v4, v18, v5

    if-gt v4, v14, :cond_8

    move v11, v14

    goto :goto_1

    :cond_8
    if-le v4, v11, :cond_9

    goto :goto_1

    :cond_9
    move v11, v4

    :goto_1
    mul-int/2addr v5, v11

    sub-int v18, v18, v5

    div-int/lit8 v4, v18, 0x2

    sub-int v5, p4, p2

    add-int/2addr v2, v4

    invoke-static {v12, v6, v4, v5, v2}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v11

    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v2}, Ll3a;->e([I)I

    move-result v2

    add-int/2addr v10, v2

    invoke-static {v13, v6, v2, v5, v10}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    filled-new-array {v2, v4}, [I

    move-result-object v2

    invoke-static {v2}, Ll3a;->e([I)I

    move-result v2

    add-int v4, v2, v16

    invoke-static {v0, v6, v2, v5, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v11

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    mul-int/lit8 v4, v14, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    aput-object v3, v4, v6

    aput-object v9, v4, v17

    aput-object v1, v4, p1

    invoke-static {v0, v2, v7, v14, v4}, Ll3a;->g(IIII[Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v15, v0

    invoke-static {v8, v6, v0, v5, v15}, Ll3a;->j(Landroid/view/View;IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, v0, Lcom/my/target/bg;->m:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v5, v1, v4

    sub-int/2addr v2, v4

    if-ne v5, v2, :cond_0

    sget-object v4, Lcom/my/target/bg$b;->c:Lcom/my/target/bg$b;

    iput-object v4, v0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    goto :goto_0

    :cond_0
    if-le v5, v2, :cond_1

    sget-object v4, Lcom/my/target/bg$b;->b:Lcom/my/target/bg$b;

    iput-object v4, v0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/my/target/bg$b;->a:Lcom/my/target/bg$b;

    iput-object v4, v0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    :goto_0
    iget v4, v0, Lcom/my/target/bg;->l:I

    iget-object v6, v0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v4, v4, v7}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v4, v0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    iget v9, v0, Lcom/my/target/bg;->n:I

    const/high16 v10, -0x80000000

    const/16 v11, 0x8

    if-eq v8, v11, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v5, v8

    sub-int/2addr v8, v9

    invoke-static {v4, v8, v2, v10}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v4, v0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    iget v8, v0, Lcom/my/target/bg;->t:I

    invoke-static {v4, v8, v8, v7}, Ll3a;->i(Landroid/view/View;III)V

    :cond_2
    iget-object v4, v0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v5, v8

    mul-int/lit8 v12, v3, 0x2

    sub-int/2addr v8, v12

    invoke-static {v4, v8, v2, v10}, Ll3a;->i(Landroid/view/View;III)V

    :cond_3
    iget-object v8, v0, Lcom/my/target/bg;->v:Lcom/my/target/bg$b;

    sget-object v12, Lcom/my/target/bg$b;->c:Lcom/my/target/bg$b;

    iget v13, v0, Lcom/my/target/bg;->q:I

    iget-object v14, v0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    iget v15, v0, Lcom/my/target/bg;->u:I

    iget-object v7, v0, Lcom/my/target/bg;->r:Lon9;

    iget-object v10, v0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    move/from16 v16, v3

    iget-object v3, v0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    move-object/from16 v17, v6

    const/4 v6, 0x1

    if-ne v8, v12, :cond_4

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v1, v15

    sub-int/2addr v5, v15

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v2, Lon9;->K:I

    iget-object v4, v7, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, -0x80000000

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v11, v4, v6}, Landroid/view/View;->measure(II)V

    invoke-static {v14, v5, v5, v2}, Ll3a;->i(Landroid/view/View;III)V

    invoke-static {v3, v5, v5, v2}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_4
    sget-object v12, Lcom/my/target/bg$b;->b:Lcom/my/target/bg$b;

    const v6, 0x800003

    if-ne v8, v12, :cond_6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    sget v6, Lon9;->K:I

    iget-object v8, v7, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v3, Lon9;->J:I

    iget-object v7, v7, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    div-int/lit8 v3, v5, 0x3

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v11, v3, v7}, Landroid/view/View;->measure(II)V

    invoke-static {v10, v5, v2, v6}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    mul-int/lit8 v3, v16, 0x2

    add-int/2addr v3, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v7, v9

    sub-int/2addr v5, v7

    invoke-static {v14, v5, v2, v6}, Ll3a;->i(Landroid/view/View;III)V

    invoke-static {v4, v5, v2, v6}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v2

    iget-boolean v2, v0, Lcom/my/target/bg;->w:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/my/target/bg;->p:I

    add-int/2addr v15, v2

    :cond_5
    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_6
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v3, Lon9;->J:I

    iget-object v7, v7, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v6, -0x80000000

    invoke-static {v10, v5, v2, v6}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v5, v2

    mul-int/lit8 v3, v16, 0x2

    sub-int/2addr v5, v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v2, v9

    invoke-static {v14, v5, v2, v6}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v0, Lcom/my/target/bg;->s:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-static {v4}, Ll3a;->e([I)I

    move-result v4

    add-int/2addr v4, v3

    add-int v4, v4, v16

    filled-new-array {v2, v4}, [I

    move-result-object v2

    invoke-static {v2}, Ll3a;->e([I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 9

    iget-object v0, p1, Lxda;->X:Lev9;

    iget v1, v0, Lev9;->e:I

    iget v2, v0, Lev9;->f:I

    iget-object v3, p0, Lcom/my/target/bg;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/my/target/bg;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/my/target/bg;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/my/target/bg;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/my/target/bg;->c:Lcom/my/target/rh;

    invoke-virtual {v6, v1}, Lcom/my/target/rh;->setColor(I)V

    iget-object v1, p1, Lxda;->Z:Lkha;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    iput-boolean v1, p0, Lcom/my/target/bg;->w:Z

    iget-object v1, p0, Lcom/my/target/bg;->b:Lcom/my/target/zh;

    iget-object v8, p1, Lao9;->q:Lh14;

    invoke-virtual {v1, v8}, Lcom/my/target/zh;->setImageData(Lh14;)V

    iget-object v1, p1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lao9;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lao9;->Q:Lpp9;

    iget-boolean v1, v1, Lpp9;->c:Z

    iput-boolean v1, p0, Lcom/my/target/bg;->y:Z

    iget-object v1, p1, Lao9;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v6, v3

    goto :goto_2

    :sswitch_0
    const-string v2, "webform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :cond_3
    :goto_2
    const/16 v1, 0x8

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lao9;->b()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lao9;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lao9;->l:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lev9;->i:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    invoke-virtual {p1}, Lao9;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/bg;->i:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lev9;->a:I

    iget v3, v0, Lev9;->b:I

    iget v4, p0, Lcom/my/target/bg;->o:I

    invoke-static {v2, v1, v3, v4}, Ll3a;->o(Landroid/widget/Button;III)V

    iget v0, v0, Lev9;->e:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/my/target/bg;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lao9;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/my/target/bg;->y:Z

    iget-object p1, p1, Lao9;->r:Lt2a;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/my/target/bg;->setClickArea(Lt2a;)V

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/my/target/bg;->setClickAreaLegacy(Lt2a;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1cb54 -> :sswitch_2
        0x68af8e1 -> :sswitch_1
        0x48f40e18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
