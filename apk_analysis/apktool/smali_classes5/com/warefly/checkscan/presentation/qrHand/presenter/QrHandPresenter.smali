.class public final Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lf93$c;
.implements Lf93$d;
.implements Lwc1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;",
        ">;",
        "Lf93$c;",
        "Lf93$d;",
        "Lwc1;"
    }
.end annotation


# instance fields
.field private final calendarInstance$delegate:Lcl4;

.field private final context:Landroid/content/Context;

.field private final dateEmptyError$delegate:Lcl4;

.field private final fdEmptyError$delegate:Lcl4;

.field private final fdInvalidError$delegate:Lcl4;

.field private final fieldValuesFlow:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Lg93;",
            ">;>;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final fnEmptyError$delegate:Lcl4;

.field private final fnInvalidError$delegate:Lcl4;

.field private final fpEmptyError$delegate:Lcl4;

.field private final fpInvalidError$delegate:Lcl4;

.field private final interactor:Lyg1;

.field private selectedDate:Ljava/util/Date;

.field private final sumEmptyError$delegate:Lcl4;

.field private final today:Ljava/util/Date;


# direct methods
.method public constructor <init>(Luf3;Lyg1;Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->interactor:Lyg1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->context:Landroid/content/Context;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->dateEmptyError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$j;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->sumEmptyError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$e;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fnEmptyError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fdEmptyError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$g;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fpEmptyError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$f;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fnInvalidError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$d;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fdInvalidError$delegate:Lcl4;

    new-instance p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$h;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fpInvalidError$delegate:Lcl4;

    sget-object p1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$a;->f:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$a;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->calendarInstance$delegate:Lcl4;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->today:Ljava/util/Date;

    new-instance p1, Lg93;

    const/4 p2, 0x0

    const/16 p3, 0x5e

    sget-object v0, Lf93$a;->a:Lf93$a;

    invoke-direct {p1, v0, p2, p3}, Lg93;-><init>(Lf93;Lg17;I)V

    new-instance p2, Lg93;

    new-instance p3, Lg17;

    const-string v0, "^\\d+[,|.]\\d{2}$"

    invoke-direct {p3, v0}, Lg17;-><init>(Ljava/lang/String;)V

    sget-object v0, Lf93$h;->a:Lf93$h;

    const/16 v1, 0x76

    invoke-direct {p2, v0, p3, v1}, Lg93;-><init>(Lf93;Lg17;I)V

    new-instance p3, Lg93;

    new-instance v0, Lg17;

    const-string v2, "^\\d{16}"

    invoke-direct {v0, v2}, Lg17;-><init>(Ljava/lang/String;)V

    sget-object v2, Lf93$f;->a:Lf93$f;

    invoke-direct {p3, v2, v0, v1}, Lg93;-><init>(Lf93;Lg17;I)V

    new-instance v0, Lg93;

    new-instance v2, Lg17;

    const-string v3, "^\\d{3,10}"

    invoke-direct {v2, v3}, Lg17;-><init>(Ljava/lang/String;)V

    sget-object v3, Lf93$e;->a:Lf93$e;

    invoke-direct {v0, v3, v2, v1}, Lg93;-><init>(Lf93;Lg17;I)V

    new-instance v2, Lg93;

    new-instance v3, Lg17;

    const-string v4, "^\\d{8,10}"

    invoke-direct {v3, v4}, Lg17;-><init>(Ljava/lang/String;)V

    sget-object v4, Lf93$g;->a:Lf93$g;

    invoke-direct {v2, v4, v3, v1}, Lg93;-><init>(Lf93;Lg17;I)V

    filled-new-array {p1, p2, p3, v0, v2}, [Lg93;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final formatQrString(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lpb2;->a:Lpb2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lpb2;->a:Lpb2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lpb2;->l:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->formatSum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "&s="

    const-string v0, "&fn="

    const-string v1, "t="

    invoke-static {v1, p1, p2, p0, v0}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&i="

    const-string p2, "&fp="

    invoke-static {p0, p3, p1, p4, p2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final formatSum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x2c

    const/16 v0, 0x2e

    invoke-static {p0, p1, v0}, Lra8;->z(CLjava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCalendarInstance()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->calendarInstance$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0
.end method

.method private final getDateEmptyError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->dateEmptyError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFdEmptyError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fdEmptyError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFdInvalidError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fdInvalidError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFnEmptyError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fnEmptyError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFnInvalidError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fnInvalidError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFpEmptyError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fpEmptyError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getFpInvalidError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fpInvalidError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getSumEmptyError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->sumEmptyError$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final dateDialogDismiss()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleDateHelperTextEnable(Z)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onDateClicked()V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg93;

    iget-object v3, v3, Lg93;->a:Lf93;

    sget-object v4, Lf93$a;->a:Lf93$a;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lg93;

    if-eqz v1, :cond_2

    iget-object v0, v1, Lg93;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_4

    :cond_4
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_4
    nop

    instance-of v1, v0, Lk57$a;

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Lj59;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->showDatePicker()V

    :cond_5
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->showDatePicker()V

    :cond_6
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleDateError(Ljava/lang/String;Z)V

    :cond_7
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleDateHelperTextEnable(Z)V

    :cond_8
    return-void
.end method

.method public onDateSelected(Ljava/util/Date;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->selectedDate:Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    new-instance v0, Lb36;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lb36;

    const/16 p1, 0x17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->showTimePicker(II)V

    :cond_1
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onFocusChanged(Lf93;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lf93;->b(Ljava/util/List;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    :cond_0
    sget-object v0, Lf93$e;->a:Lf93$e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFdHelperTextEnable(Z)V

    return-void

    :cond_1
    sget-object v0, Lf93$f;->a:Lf93$f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFnHelperTextEnable(Z)V

    return-void

    :cond_2
    sget-object v0, Lf93$g;->a:Lf93$g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFpHelperTextEnable(Z)V

    return-void

    :cond_3
    sget-object v0, Lf93$h;->a:Lf93$h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleSumHelperTextEnable(Z)V

    :cond_4
    return-void

    :cond_5
    sget-object p0, Lf93$a;->a:Lf93$a;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onHelperClick()V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lug7;->a:Lug7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onRequestCheque()V
    .locals 12

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg93;

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg93;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg93;

    const/4 v9, 0x3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg93;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg93;

    :try_start_0
    new-instance v0, Ljava/util/Date;

    iget-object v2, v2, Lg93;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Lk57$a;

    invoke-direct {v2, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    nop

    instance-of v2, v0, Lk57$a;

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    move-object v0, v10

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/Date;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v3, Lg93;->b:Ljava/lang/String;

    iget-object v4, v4, Lg93;->b:Ljava/lang/String;

    iget-object v5, v5, Lg93;->b:Ljava/lang/String;

    iget-object v6, v6, Lg93;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->formatQrString(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lwu6;->a:Lwu6;

    invoke-static {v2, v0}, Lwu6;->b(Lwu6;Ljava/lang/String;)Lwu6$a;

    move-result-object v0

    invoke-virtual {v0}, Lwu6$a;->a()Lhv6;

    move-result-object v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->interactor:Lyg1;

    invoke-virtual {v2, v0}, Lyg1;->a(Lhv6;)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->interactor:Lyg1;

    invoke-virtual {v2, v0}, Lyg1;->c(Lhv6;)Lzp1;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    invoke-static {v0, v10, v10, v9}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    const-string v2, "onRequestCheque"

    invoke-virtual {p0, v0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination(Lcp2;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->flowRouter:Luf3;

    new-array v1, v8, [Ldf7;

    sget-object v2, Lyg7;->a:Lyg7;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lo87;->f([Ldf7;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;Lf93;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    :goto_1
    invoke-interface {p2, v2, v3, p0}, Lf93;->a(Ljava/util/List;Ljava/lang/String;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final onTimeSelected(II)V
    .locals 9

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->selectedDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    :try_start_0
    sget-object p2, Lpb2;->a:Lpb2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lpb2;->i(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lpb2;->f:Lfh8;

    invoke-virtual {p2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :cond_0
    :goto_0
    nop

    instance-of v0, p2, Lk57$a;

    if-nez v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->showSelectedDate(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->changeFocusAndShowKeyboard()V

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->fieldValuesFlow:Lxg5;

    :cond_3
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg93;

    iget-object v3, v3, Lg93;->a:Lf93;

    sget-object v4, Lf93$a;->a:Lf93$a;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg93;

    const/4 v7, 0x0

    const/16 v8, 0x7b

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lg93;->a(Lg93;Ljava/lang/String;Ljava/lang/String;ZZI)Lg93;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_6
    return-void
.end method

.method public showBlankDateError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getDateEmptyError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleDateError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showBlankFdError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFdEmptyError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFdError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showBlankFnError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFnEmptyError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFnError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showBlankFpError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFpEmptyError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFpError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showBlankSumError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getSumEmptyError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleSumError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showInvalidFdError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFdInvalidError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFdError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showInvalidFnError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFnInvalidError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFnError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showInvalidFpError(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->getFpInvalidError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFpError(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showInvalidSumError(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->showBlankSumError(Z)V

    return-void
.end method
