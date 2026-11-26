.class public final synthetic Lek4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lhk4;

.field public final synthetic c:Lik4;

.field public final synthetic d:Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;


# direct methods
.method public synthetic constructor <init>(Lhk4;Lik4;Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek4;->b:Lhk4;

    iput-object p2, p0, Lek4;->c:Lik4;

    iput-object p3, p0, Lek4;->d:Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object p1, p0, Lek4;->b:Lhk4;

    iget-object v0, p1, Lhk4;->c:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lek4;->c:Lik4;

    iget-object v2, v1, Lik4;->a:Ljava/lang/String;

    iget-object p0, p0, Lek4;->d:Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;

    if-eqz p2, :cond_1

    iget p2, v1, Lik4;->e:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lgk4;

    invoke-direct {v1, p1, v2, p2}, Lgk4;-><init>(Lhk4;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;->etText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;->etText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
