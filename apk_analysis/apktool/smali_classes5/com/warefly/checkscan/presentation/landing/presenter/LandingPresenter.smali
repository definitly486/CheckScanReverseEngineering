.class public final Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Ljh4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/landing/view/LandingView;",
        ">;",
        "Ljh4;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final landingId:I

.field private final landingInteractor:Laj4;

.field private final preferencesRepository:Ljf6;

.field private final withoutOfferDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laj4;ILuf3;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    iput p2, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->flowRouter:Luf3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->preferencesRepository:Ljf6;

    const/16 p1, 0x1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x58

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x6d

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->withoutOfferDialogIds:Ljava/util/List;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->onUnselectedFieldClick$lambda$0(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V

    return-void
.end method

.method private final formatDateDigit(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "0"

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onUnselectedFieldClick$lambda$0(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V
    .locals 7

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p4}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->formatDateDigit(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->formatDateDigit(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Laj4;->e:Lhi0;

    invoke-virtual {p2}, Lhi0;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, Lkx2;->b:Lkx2;

    :cond_0
    check-cast p2, Ljava/util/Collection;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lwk4;

    invoke-interface {p5}, Lpz3;->id()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, -0x1

    :goto_1
    invoke-static {p3}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    invoke-virtual {p1, p4}, Ly74;->c(I)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lvk4;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p1, Lvk4;->a:Ljava/lang/String;

    iget-boolean v2, p1, Lvk4;->b:Z

    iget-object v3, p1, Lvk4;->c:Ljava/lang/String;

    iget-boolean v5, p1, Lvk4;->e:Z

    iget v6, p1, Lvk4;->f:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvk4;

    invoke-direct/range {v0 .. v6}, Lvk4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p3}, Laj4;->b(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final offerRegistrationConfirm()V
    .locals 4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v2, v3}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onAgreementClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    invoke-virtual {p0, p1}, Laj4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onCheckBoxClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    invoke-virtual {p0, p1}, Laj4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDoActionButtonClick(I)V
    .locals 12

    new-instance v0, Lkd$i0$a;

    sget-object v1, Lkd$q;->RegisterForm:Lkd$q;

    invoke-direct {v0, p1, v1}, Lkd$i0$a;-><init>(ILkd$q;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    iget-object v1, v0, Laj4;->e:Lhi0;

    invoke-virtual {v1}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Lkx2;->b:Lkx2;

    :cond_0
    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lmh4;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lm05;->b(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    move v4, v5

    :cond_3
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh4;

    iget-object v7, v4, Lmh4;->a:Ljava/lang/String;

    iget-boolean v4, v4, Lmh4;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lyi4;

    if-eqz v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lm05;->b(I)I

    move-result v4

    if-ge v4, v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v4

    :goto_3
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyi4;

    invoke-interface {v5}, Lyi4;->getType()Lqv6;

    move-result-object v7

    sget-object v8, Lqv6;->PHONE:Lqv6;

    if-ne v7, v8, :cond_8

    invoke-interface {v5}, Lyi4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lyi4;->b()Ljava/lang/String;

    move-result-object v5

    const-string v8, "[\\s()\\-]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lb36;

    invoke-direct {v8, v7, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-interface {v5}, Lyi4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lyi4;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lb36;

    invoke-direct {v8, v7, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    iget-object v5, v8, Lb36;->b:Ljava/lang/Object;

    iget-object v7, v8, Lb36;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lxi4;

    if-eqz v7, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lxi4;

    invoke-interface {v7}, Lxi4;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lm05;->b(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lxi4;

    invoke-interface {v10}, Lxi4;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-static {v10, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxi4;

    invoke-interface {v9}, Lxi4;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lxi4;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_13
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lm05;->b(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Laj4;->a:Lnj4;

    new-instance v3, Lnh4;

    invoke-direct {v3, v6, v1}, Lnh4;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v2, v3, p1}, Lnj4;->a(Lnh4;I)Lmz7;

    move-result-object p1

    new-instance v1, Ldj4;

    invoke-direct {v1, v0}, Ldj4;-><init>(Laj4;)V

    new-instance v0, Lzi4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzi4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, p1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v1, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$b;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "showPromoRegisterResult(Lcom/warefly/checkscan/domain/entities/promotion/PromotionRegisterResult;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    const-string v5, "showPromoRegisterResult"

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const-string v0, "onDoActionButtonClick"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 19

    move-object/from16 v0, p0

    invoke-super {v0}, Lih5;->onFirstViewAttach()V

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->withoutOfferDialogIds:Ljava/util/List;

    iget v2, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->G0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->showOfferRegistrationDialog()V

    :cond_0
    iget-object v1, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    iget v2, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingId:I

    iget-object v3, v1, Laj4;->a:Lnj4;

    invoke-interface {v3, v2}, Lnj4;->b(I)Lmz7;

    move-result-object v2

    new-instance v3, Lcj4;

    invoke-direct {v3, v1}, Lcj4;-><init>(Laj4;)V

    new-instance v1, Lfg2;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lfg2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lj08;

    invoke-direct {v3, v2, v1}, Lj08;-><init>(Lmz7;Lxl3;)V

    new-instance v1, Lzq5;

    invoke-direct {v1, v3}, Lzq5;-><init>(Ltq5;)V

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v1, v2}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v1

    new-instance v5, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$c;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "showContent(Lcom/warefly/checkscan/domain/interactor/landing/LandingInteractor$LandingContent;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v15, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    const-string v9, "showContent"

    move-object v8, v15

    invoke-direct/range {v5 .. v11}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v5, v4}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v1

    const-string v5, "fetchScreenContent"

    invoke-virtual {v0, v1, v5}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    iget-object v1, v1, Laj4;->f:Lhi0;

    invoke-virtual {v1, v2}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v1

    new-instance v12, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$d;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v17, "showImage(Ljava/lang/String;)V"

    const/16 v18, 0x0

    const/4 v13, 0x1

    const-string v16, "showImage"

    invoke-direct/range {v12 .. v18}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1, v3, v12, v4}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v1

    const-string v2, "imageUrl"

    invoke-virtual {v0, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onImageClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    invoke-virtual {p0, p1}, Laj4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->openCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOrdClick(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Laj4;->e:Lhi0;

    invoke-virtual {p1}, Lhi0;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lij4;

    if-eqz v1, :cond_0

    check-cast v0, Lij4;

    iget-object p1, v0, Lij4;->a:Lb06;

    goto :goto_0

    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->showOfdDialog(Lb06;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTextFieldChange(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->landingInteractor:Laj4;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Laj4;->b:Li3;

    iget-object v1, p0, Laj4;->e:Lhi0;

    invoke-virtual {v1}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    sget-object v1, Lkx2;->b:Lkx2;

    :cond_1
    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwk4;

    invoke-interface {v5}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_1
    invoke-static {v2}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    invoke-virtual {p1, v4}, Ly74;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lik4;

    const/4 v1, 0x3

    if-eq p3, v1, :cond_7

    const/4 v1, 0x4

    const/4 v5, 0x1

    if-eq p3, v1, :cond_6

    const/16 v1, 0xd0

    if-eq p3, v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_8

    :goto_2
    move v3, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p2}, Li3;->c(Ljava/lang/String;)Z

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_8

    goto :goto_2

    :cond_7
    iget-object p3, v0, Li3;->f:Lg17;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {p3, v1, p2}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, v0, Li3;->g:Lg17;

    invoke-virtual {v0, p3}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v3

    :cond_8
    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 p3, 0x1d7

    invoke-static {p1, p2, v3, p3}, Lik4;->d(Lik4;Ljava/lang/String;ZI)Lik4;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Laj4;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onUnselectedFieldClick(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    if-eqz v0, :cond_0

    new-instance v1, Lkj4;

    invoke-direct {v1, p0, p1}, Lkj4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->showDatePicker(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;)V

    :cond_0
    return-void
.end method
