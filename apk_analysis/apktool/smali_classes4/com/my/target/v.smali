.class public final Lcom/my/target/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr95;


# instance fields
.field public final a:Lcom/my/target/q;

.field public b:Lvw9;

.field public c:Lgv9;

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/my/target/q;Lex0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/v;->a:Lcom/my/target/q;

    return-void
.end method


# virtual methods
.method public final a(Ls95;)V
    .locals 8

    iget v0, p1, Ls95;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/my/target/v;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/my/target/v;->d:Ljava/lang/ref/WeakReference;

    const-string v1, "AdChoicesOptionsController: there is no context, can\'t process action click"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {v2, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/my/target/v;->a:Lcom/my/target/q;

    iget-object v3, v1, Lcom/my/target/q;->d:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/my/target/q;->c:Ljava/util/List;

    invoke-static {v3}, Lcom/my/target/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/my/target/q;->d:Ljava/util/List;

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "AdChoicesOptionsController: there are no menuActions, can\'t process action click"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, v1, Lcom/my/target/q;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/target/q$a;

    iget-object v4, v3, Lcom/my/target/q$a;->e:Ls95;

    if-ne v4, p1, :cond_5

    goto :goto_0

    :cond_6
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_7

    const-string p0, "AdChoicesOptionsController: can\'t obtain option by menu action."

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p1, v3, Lcom/my/target/q$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    new-instance v7, Ly7a;

    invoke-direct {v7, v1, p1, v4, v5}, Ly7a;-><init>(Lcom/my/target/m1$a;Ljava/lang/String;J)V

    iget-object p1, v6, Lcom/my/target/z2;->e:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object p1, v3, Lcom/my/target/q$a;->e:Ls95;

    iget-object p1, p1, Ls95;->b:Ljava/lang/String;

    const-string v1, "copy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v3, Lcom/my/target/q$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "copied id"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_9
    invoke-virtual {p0}, Lcom/my/target/v;->b()V

    return-void

    :cond_a
    iget-object p1, v3, Lcom/my/target/q$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0, p1, v2, v2, v2}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    :cond_b
    iget-boolean p1, v3, Lcom/my/target/q$a;->d:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/my/target/v;->c:Lgv9;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lgv9;->b()V

    :cond_c
    invoke-virtual {p0}, Lcom/my/target/v;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/v;->b:Lvw9;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lvw9;->d:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "AdChoicesOptionMenu: can\'t dismiss not existing view"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/k;

    if-nez v0, :cond_2

    const-string v0, "AdChoicesOptionMenu: can\'t dismiss not existing or garbage-collected view"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/my/target/k;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/y0;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/my/target/y0;->dismiss()V

    :goto_0
    iput-object v1, p0, Lcom/my/target/v;->b:Lvw9;

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 11

    iget-object v0, p0, Lcom/my/target/v;->a:Lcom/my/target/q;

    iget-object v1, v0, Lcom/my/target/q;->d:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/my/target/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/my/target/q;->d:Ljava/util/List;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v2, Lvw9;

    invoke-direct {v2}, Lvw9;-><init>()V

    iput-object v2, p0, Lcom/my/target/v;->b:Lvw9;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/my/target/v;->d:Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lcom/my/target/q;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    iput-object v0, v2, Lvw9;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    instance-of v4, v0, Ljava/lang/AbstractMethodError;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v4, v2, Lvw9;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls95;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lvw9;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "AdChoicesOptionMenu: there are no actions, can\'t present."

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    iget-object p0, v2, Lvw9;->c:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_6

    const-string p0, "AdChoicesOptionMenu: there is no listener, can\'t present"

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    new-instance p0, Lcom/my/target/k;

    iget-object v0, v2, Lvw9;->b:Ljava/lang/String;

    iget-object v1, v2, Lvw9;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, v4, v0, v1}, Lcom/my/target/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v2, Lvw9;->d:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/my/target/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls95;

    iget v0, v0, Ls95;->d:I

    if-ne v0, v1, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls95;

    iget v4, v2, Ls95;->d:I

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    iput-object v2, p0, Lcom/my/target/k;->k:Ls95;

    new-instance v0, Le0a;

    invoke-direct {v0, p0, v2}, Le0a;-><init>(Lcom/my/target/k;Ls95;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v2

    mul-int/lit8 v6, v2, 0x14

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    mul-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0x4e4e4f

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    int-to-float v8, v2

    mul-int/lit8 v9, v2, 0x7

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    mul-int/lit8 v8, v2, 0xa

    int-to-float v8, v8

    mul-int/lit8 v10, v2, 0xe

    int-to-float v10, v10

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    const v2, -0x303031

    invoke-static {v4, v1, v2}, Ll3a;->h(Landroid/view/View;II)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/my/target/k;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/my/target/k;->k:Ls95;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/my/target/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_b

    new-instance v2, Lcom/my/target/k$d;

    invoke-direct {v2, v1}, Lcom/my/target/k$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls95;

    new-instance v2, Lcom/my/target/k$c;

    invoke-direct {v2, v1}, Lcom/my/target/k$c;-><init>(Ls95;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    new-instance p1, Lcom/my/target/k$a;

    iget-object v1, p0, Lcom/my/target/k;->h:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1}, Lcom/my/target/k$a;-><init>(Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/my/target/k;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/my/target/y0;

    invoke-direct {v0, p0, p1}, Lcom/my/target/y0;-><init>(Lcom/my/target/y0$a;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/my/target/k;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "AdChoicesOptionsController: Unable to start adchoices dialog"

    invoke-static {v3, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/k;->m()V

    goto :goto_5

    :cond_d
    :goto_4
    const-string p0, "AdChoicesOptionsView: there are no actions. Can\'t open dialog"

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/v;->b:Lvw9;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
