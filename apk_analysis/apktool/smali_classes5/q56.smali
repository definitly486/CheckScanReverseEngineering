.class public final Lq56;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

.field public final synthetic g:Ls56;

.field public final synthetic h:Lp56;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;Ls56;Lp56;)V
    .locals 0

    iput-object p1, p0, Lq56;->f:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    iput-object p2, p0, Lq56;->g:Ls56;

    iput-object p3, p0, Lq56;->h:Lp56;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lq56;->f:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/warefly/checkscan/personalform/databinding/PersonalDataFormPopupDropDownBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/personalform/databinding/PersonalDataFormPopupDropDownBinding;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/warefly/checkscan/personalform/databinding/PersonalDataFormPopupDropDownBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, v1, Lcom/warefly/checkscan/personalform/databinding/PersonalDataFormPopupDropDownBinding;->lvOptions:Landroid/widget/ListView;

    invoke-virtual {v0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lq56;->g:Ls56;

    iget-object v6, v5, Ls56;->a:Ljava/util/List;

    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls56$a;

    iget-object v9, v9, Ls56$a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v9, 0x7f0d0328

    invoke-direct {v7, v4, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lr56;

    iget-object p0, p0, Lq56;->h:Lp56;

    invoke-direct {v4, p0, v5, p1}, Lr56;-><init>(Lp56;Ls56;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p0, v1, Lcom/warefly/checkscan/personalform/databinding/PersonalDataFormPopupDropDownBinding;->lvOptions:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    iget-object v3, v0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v3

    aget v2, p0, v2

    aget p0, p0, v1

    iget-object v3, v0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v3

    iget-object v0, v0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    if-lt v5, v4, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v4

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
