.class public final Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$b;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$b;->c:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$b;->c:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Li13;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ", "

    invoke-static {p0, v0, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/warefly/checkscan/component/logger/CrashlyticsException$BaseFragment;

    const-string v0, "Base Fragment: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/component/logger/CrashlyticsException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ls0;->d(Lcom/warefly/checkscan/component/logger/CrashlyticsException;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasePresenterError"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
