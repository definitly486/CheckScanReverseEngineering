.class public Lcom/my/target/wj;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final k:I

.field public static final l:I


# instance fields
.field public final b:Lcom/my/target/p1;

.field public final c:Landroid/widget/Button;

.field public final d:Lcom/my/target/q1;

.field public final e:Lcom/my/target/f5;

.field public final f:Ll3a;

.field public final g:Z

.field public final h:Lcom/my/target/c1;

.field public i:Le6a;

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/my/target/wj;->k:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/my/target/wj;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ll3a;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/my/target/c1;

    new-instance v1, Lhu2;

    invoke-direct {v1, p0}, Lhu2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v0, p0, Lcom/my/target/wj;->h:Lcom/my/target/c1;

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/wj;->i:Le6a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/wj;->j:Z

    iput-object p2, p0, Lcom/my/target/wj;->f:Ll3a;

    iput-boolean p3, p0, Lcom/my/target/wj;->g:Z

    new-instance v0, Lcom/my/target/f5;

    invoke-direct {v0, p1, p2, p3}, Lcom/my/target/f5;-><init>(Landroid/content/Context;Ll3a;Z)V

    iput-object v0, p0, Lcom/my/target/wj;->e:Lcom/my/target/f5;

    const-string v1, "footer_layout"

    invoke-static {v0, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Lcom/my/target/p1;

    invoke-direct {v0, p1, p2, p3}, Lcom/my/target/p1;-><init>(Landroid/content/Context;Ll3a;Z)V

    iput-object v0, p0, Lcom/my/target/wj;->b:Lcom/my/target/p1;

    const-string p2, "body_layout"

    invoke-static {v0, p2}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/wj;->c:Landroid/widget/Button;

    const-string p3, "cta_button"

    invoke-static {p2, p3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance p2, Lcom/my/target/q1;

    invoke-direct {p2, p1}, Lcom/my/target/q1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/wj;->d:Lcom/my/target/q1;

    const-string p0, "age_bordering"

    invoke-static {p2, p0}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lt2a;Lml0;)V
    .locals 10

    iget-boolean v0, p1, Lt2a;->g:Z

    iget-boolean v1, p1, Lt2a;->m:Z

    iget-boolean v2, p0, Lcom/my/target/wj;->j:Z

    iget-object v3, p0, Lcom/my/target/wj;->d:Lcom/my/target/q1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/my/target/wj;->c:Landroid/widget/Button;

    iget-object v7, p0, Lcom/my/target/wj;->b:Lcom/my/target/p1;

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Ljga;

    invoke-direct {v2, p0, p2}, Ljga;-><init>(Lcom/my/target/wj;Lcom/my/target/wf$a;)V

    new-instance v9, Lul0;

    invoke-direct {v9, p2}, Lul0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, p1, v9}, Lcom/my/target/p1;->a(Lt2a;Lcom/my/target/wf$b;)V

    iget-object p2, p0, Lcom/my/target/wj;->h:Lcom/my/target/c1;

    if-eqz v1, :cond_0

    invoke-virtual {v6, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lkga;

    invoke-direct {p1, p0, v8, v2}, Lkga;-><init>(Lcom/my/target/wj;ZLjga;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    invoke-virtual {v6, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz v0, :cond_1

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-boolean p1, p1, Lt2a;->h:Z

    new-instance p2, Lkga;

    invoke-direct {p2, p0, p1, v2}, Lkga;-><init>(Lcom/my/target/wj;ZLjga;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_2
    new-instance v2, Lhga;

    invoke-direct {v2, v4, p0, p2}, Lhga;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Ln61;

    invoke-direct {p2, v2}, Ln61;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, p1, p2}, Lcom/my/target/p1;->a(Lt2a;Lcom/my/target/wf$b;)V

    if-eqz v1, :cond_3

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    new-instance p2, Liga;

    invoke-direct {p2, p0, p1, v2}, Liga;-><init>(Lcom/my/target/wj;Lt2a;Lhga;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/wj;->b:Lcom/my/target/p1;

    invoke-virtual {v0, p1}, Lcom/my/target/p1;->setBanner(Lxda;)V

    invoke-virtual {p1}, Lao9;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/wj;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/my/target/wj;->e:Lcom/my/target/f5;

    const v2, -0x999a

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    iput-boolean v0, p0, Lcom/my/target/wj;->j:Z

    iget-object v0, p1, Lao9;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/my/target/wj;->d:Lcom/my/target/q1;

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lao9;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/wj;->f:Ll3a;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Ll3a;->b(F)I

    move-result p0

    const p1, -0xff540e

    const v0, -0xff8957

    invoke-static {v1, p1, v0, p0}, Ll3a;->o(Landroid/widget/Button;III)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
