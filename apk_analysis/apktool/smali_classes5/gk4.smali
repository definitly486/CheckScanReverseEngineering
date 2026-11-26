.class public final Lgk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lhk4;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lhk4;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk4;->b:Lhk4;

    iput-object p2, p0, Lgk4;->c:Ljava/lang/String;

    iput p3, p0, Lgk4;->d:I

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

    iget-object p2, p0, Lgk4;->b:Lhk4;

    iget-object p2, p2, Lhk4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lgk4;->d:I

    iget-object p0, p0, Lgk4;->c:Ljava/lang/String;

    invoke-interface {p2, p0, p1, p3}, Ljh4;->onTextFieldChange(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
