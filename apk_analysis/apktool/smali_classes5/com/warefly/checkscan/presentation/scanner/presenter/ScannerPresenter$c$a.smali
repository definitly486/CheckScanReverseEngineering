.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lid3;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;


# direct methods
.method public constructor <init>(Lid3;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;->b:Lid3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;->c:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;

    iget v1, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;->c:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getChequesFlow$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;

    move-result-object p2

    invoke-interface {p2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lkh1;

    invoke-static {p1, v4}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getInfoByQr(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lkh1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput v3, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a$a;->m:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c$a;->b:Lid3;

    invoke-interface {p0, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
