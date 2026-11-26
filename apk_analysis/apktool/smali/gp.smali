.class public final synthetic Lgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lgp;->b:I

    iput-object p1, p0, Lgp;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lgp;->b:I

    iget-object p0, p0, Lgp;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0}, Lcom/tapjoy/TJUser;->d(Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    :pswitch_0
    check-cast p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->c(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->j:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getDate()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v2, v1}, Lm92;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->j:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lm92;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o(I)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->b(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
