.class public final Ls66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lr66;

.field public final synthetic c:Lt66;


# direct methods
.method public constructor <init>(Lr66;Lt66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls66;->b:Lr66;

    iput-object p2, p0, Ls66;->c:Lt66;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Ls66;->b:Lr66;

    iget-object p2, p2, Lr66;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    iget-object p0, p0, Ls66;->c:Lt66;

    invoke-interface {p0}, Lt66;->g()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Lw56;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p0, p1}, Lr66$a;->onTextFieldChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
