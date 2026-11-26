.class public final Lje5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lje5;->a:Ljava/util/HashMap;

    new-instance v1, Ly8;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ly8;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lye1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lye1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbp6;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lbp6;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldv;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ly76;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ly76;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ly76;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ly76;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls42;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ls42;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lje5;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lje5;->c:Ljava/util/HashMap;

    new-instance v1, Lk9;

    invoke-direct {v1}, Lk9;-><init>()V

    const-class v2, Lk9;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhx5;

    invoke-direct {v1}, Lhx5;-><init>()V

    const-class v2, Lhx5;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
