.class public Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$ShowEmailErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowEmailErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isError:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State;Z)V
    .locals 1

    const-string p1, "showEmailError"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$ShowEmailErrorCommand;->isError:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$ShowEmailErrorCommand;->isError:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showEmailError(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView$$State$ShowEmailErrorCommand;->apply(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;)V

    return-void
.end method
