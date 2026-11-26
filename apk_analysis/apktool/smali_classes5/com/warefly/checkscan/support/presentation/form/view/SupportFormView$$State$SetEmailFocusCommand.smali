.class public Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$SetEmailFocusCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmailFocusCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State;)V
    .locals 1

    const-string p1, "setEmailFocus"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setEmailFocus()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$SetEmailFocusCommand;->apply(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;)V

    return-void
.end method
