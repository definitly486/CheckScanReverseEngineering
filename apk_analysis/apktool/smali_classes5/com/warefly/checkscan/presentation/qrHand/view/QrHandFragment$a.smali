.class public final Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lf93;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf93;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;->c:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;->b:Lf93;

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

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;->c:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    invoke-virtual {p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    move-result-object p2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;->b:Lf93;

    invoke-virtual {p2, p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->onTextChanged(Ljava/lang/CharSequence;Lf93;)V

    return-void
.end method
