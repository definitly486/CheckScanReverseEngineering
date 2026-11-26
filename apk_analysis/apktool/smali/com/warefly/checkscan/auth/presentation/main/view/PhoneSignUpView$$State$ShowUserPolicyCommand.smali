.class public Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State$ShowUserPolicyCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowUserPolicyCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;",
        ">;"
    }
.end annotation


# instance fields
.field public final userPolicy:Lz99;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State;Lz99;)V
    .locals 1

    const-string p1, "showUserPolicy"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State$ShowUserPolicyCommand;->userPolicy:Lz99;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State$ShowUserPolicyCommand;->userPolicy:Lz99;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showUserPolicy(Lz99;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView$$State$ShowUserPolicyCommand;->apply(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;)V

    return-void
.end method
