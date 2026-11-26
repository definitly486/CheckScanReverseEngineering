.class public final Lbn8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lcn8;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcn8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;

    check-cast p2, Lcn8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->tvText:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    iget-object v0, p2, Lcn8;->a:Ljava/lang/String;

    invoke-static {v0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->tvText:Landroid/widget/TextView;

    sget-object v0, Lx61;->a:Lx61;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-boolean p0, p2, Lcn8;->d:Z

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->tvText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/view/View;->setTextAlignment(I)V

    :goto_0
    iget-boolean p0, p2, Lcn8;->c:Z

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->tvText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const p0, 0x7f150402

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_1
    const p0, 0x7f150430

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :goto_1
    iget-object p0, p2, Lcn8;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->ivTooltip:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Llb7;

    new-instance v1, Lan8;

    invoke-direct {v1, p1, p2}, Lan8;-><init>(Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;Lcn8;)V

    invoke-direct {p0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->ivTooltip:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->ivTooltip:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
