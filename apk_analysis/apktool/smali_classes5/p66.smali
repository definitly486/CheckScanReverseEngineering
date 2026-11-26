.class public final synthetic Lp66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lr66;

.field public final synthetic c:Lt66;

.field public final synthetic d:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;


# direct methods
.method public synthetic constructor <init>(Lr66;Lt66;Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp66;->b:Lr66;

    iput-object p2, p0, Lp66;->c:Lt66;

    iput-object p3, p0, Lp66;->d:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object p1, p0, Lp66;->b:Lr66;

    iget-object v0, p1, Lr66;->c:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lp66;->c:Lt66;

    iget-object p0, p0, Lp66;->d:Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;

    if-eqz p2, :cond_1

    invoke-interface {v1}, Lw56;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-interface {v1}, Lw56;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ls66;

    invoke-direct {v2, p1, v1}, Ls66;-><init>(Lr66;Lt66;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;->etField:Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;

    invoke-interface {v1}, Lw56;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormTextFieldBinding;->etField:Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;

    invoke-interface {v1}, Lw56;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
