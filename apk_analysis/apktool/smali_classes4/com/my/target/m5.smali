.class public final Lcom/my/target/m5;
.super Lcom/my/target/l2;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/m5;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u041e\u0431\u044a\u044f\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043a\u0440\u044b\u0442\u043e"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/my/target/m5;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "\u041c\u044b \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u043c \u0432\u0430\u0448\u0438 \u043e\u0442\u0432\u0435\u0442\u044b, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u0434\u0431\u0438\u0440\u0430\u0442\u044c \u0434\u043b\u044f \u0432\u0430\u0441 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0443\u044e \u0440\u0435\u043a\u043b\u0430\u043c\u0443"

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p3, "\u0423\u0442\u043e\u0447\u043d\u0438\u0442\u0435 \u043f\u0440\u0438\u0447\u0438\u043d\u0443"

    :cond_4
    iget-object p1, p0, Lcom/my/target/l2;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p4, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    :cond_5
    iget-object p1, p0, Lcom/my/target/l2;->d:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p5}, Lcom/my/target/l2;->c(Ljava/util/ArrayList;)V

    new-instance p2, Lg2a;

    invoke-direct {p2, p0}, Lg2a;-><init>(Lcom/my/target/m5;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/my/target/y0;

    invoke-direct {p2, p0, p1}, Lcom/my/target/y0;-><init>(Lcom/my/target/y0$a;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/my/target/l2;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "AdChoicesOptionsController: Unable to start adchoices dialog"

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/l2;->m()V

    return-void
.end method

.method public final d()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lko9;->d:I

    iget-object p0, p0, Lcom/my/target/l2;->c:Lko9;

    iget-object v2, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lko9;->v:I

    iget-object v2, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v2, Lko9;->r:I

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/l2;->b:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/y0;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/y0;->dismiss()V

    return-void
.end method

.method public final f(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/my/target/l2;->g:Lcom/my/target/e6;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lko9;->y:I

    iget-object v6, p0, Lcom/my/target/l2;->c:Lko9;

    iget-object v7, v6, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lko9;->F:I

    iget-object v6, v6, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const-string v7, "M28 4C41.2548 4 52 14.7452 52 28C52 41.2548 41.2548 52 28 52C14.7452 52 4 41.2548 4 28C4 14.7452 14.7452 4 28 4ZM28 7C16.402 7 7 16.402 7 28C7 39.598 16.402 49 28 49C39.598 49 49 39.598 49 28C49 16.402 39.598 7 28 7ZM36.9393 20.9393C37.5251 20.3536 38.4749 20.3536 39.0607 20.9393C39.6464 21.5251 39.6464 22.4749 39.0607 23.0607L25.0607 37.0607C24.4749 37.6464 23.5251 37.6464 22.9393 37.0607L15.9393 30.0607C15.3536 29.4749 15.3536 28.5251 15.9393 27.9393C16.5251 27.3536 17.4749 27.3536 18.0607 27.9393L24 33.8787L36.9393 20.9393Z"

    const/4 v9, -0x1

    invoke-static {p1, v3, v9, v7}, Ldt9;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v3, Lyu9;->G:I

    iget-object v7, p0, Lcom/my/target/l2;->j:Lyu9;

    iget-object v9, v7, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/my/target/l2;->e(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/m5;->n:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget v9, Lko9;->n:I

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v2, v3, v9, v3, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/my/target/m5;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/my/target/m5;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v3, Lko9;->i:I

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p1, v1, v3, v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Landroid/view/View;->setTextAlignment(I)V

    sget p1, Lyu9;->v:I

    iget-object v1, v7, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lko9;->S:I

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/my/target/m5;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 0

    const-string p0, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/my/target/l2;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/my/target/l2;->g:Lcom/my/target/e6;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/my/target/l2;->l:Lcom/my/target/o;

    iget-object p0, p0, Lcom/my/target/o;->f:Lve1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/w1;

    invoke-virtual {p0}, Lcom/my/target/w1;->resume()V

    :cond_0
    return-void
.end method
