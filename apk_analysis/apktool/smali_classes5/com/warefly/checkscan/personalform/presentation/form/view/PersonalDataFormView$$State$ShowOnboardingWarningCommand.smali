.class public Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowOnboardingWarningCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOnboardingWarningCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;",
        ">;"
    }
.end annotation


# instance fields
.field public final warning:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V
    .locals 1

    const-string p1, "showOnboardingWarning"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowOnboardingWarningCommand;->warning:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowOnboardingWarningCommand;->warning:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;->showOnboardingWarning(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowOnboardingWarningCommand;->apply(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;)V

    return-void
.end method
