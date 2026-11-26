.class public final Lcom/warefly/checkscan/util/calendar/calendar/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/util/calendar/calendar/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/warefly/checkscan/util/calendar/calendar/a;",
        ">;",
        "Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;"
    }
.end annotation


# instance fields
.field public final i:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

.field public final t:Landroid/content/res/TypedArray;

.field public final u:Z

.field public final v:Ljava/util/Calendar;

.field public final w:Lsv8;

.field public final x:Lh64;

.field public y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/util/calendar/calendar/b$a<",
            "Ldy0;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;Landroid/content/res/TypedArray;Z)V
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->i:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->t:Landroid/content/res/TypedArray;

    iput-boolean p3, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->u:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->v:Ljava/util/Calendar;

    sget-object p1, Lsv8;->Companion:Lsv8$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lsv8$a;->b(Ljava/time/ZoneId;)Lsv8;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->w:Lsv8;

    sget-object p1, Lh64;->Companion:Lh64$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lh64;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lh64;-><init>(Ljava/time/Instant;)V

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->x:Lh64;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->x:Lh64;

    sget-object v2, Llc2;->Companion:Llc2$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Llc2;->b:Llc2$d;

    iget-object v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->w:Lsv8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v4, v0

    neg-long v4, v4

    iget-object v3, v3, Lsv8;->a:Ljava/time/ZoneId;

    :try_start_0
    iget-object v6, v1, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {v6, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v6, v2, Llc2$d;->c:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    new-instance v6, Lh64;

    invoke-direct {v6, v3}, Lh64;-><init>(Ljava/time/Instant;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Lkotlinx/datetime/DateTimeArithmeticException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    instance-of p1, p0, Ljava/time/DateTimeException;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/lang/ArithmeticException;

    if-nez p1, :cond_0

    throw p0

    :cond_0
    new-instance p1, Lkotlinx/datetime/DateTimeArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instant "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be represented as local date when adding "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to it"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->z:Ljava/util/ArrayList;

    new-instance p1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    iget-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->w:Lsv8;

    iget-object p2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->x:Lh64;

    iget-object v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->t:Landroid/content/res/TypedArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ldy0;

    invoke-static {p2, p1}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object v0

    iget-object v0, v0, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-static {p2, p1}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object v1

    iget-object v1, v1, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, p1}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object p1

    iget-object p1, p1, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p1

    invoke-direct {p3, v0, v1, p1}, Ldy0;-><init>(III)V

    invoke-virtual {p0, p3}, Lcom/warefly/checkscan/util/calendar/calendar/b;->b(Ldy0;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ldy0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/util/calendar/calendar/b;->b(Ldy0;)V

    return-void
.end method

.method public final b(Ldy0;)V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->u:Z

    iget-object v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->i:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    iput-object v1, p1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    iput-object p1, v0, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-virtual {v2, p1}, Ldy0;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    if-eqz v0, :cond_2

    iput-object v1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v0, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Ldy0;->b:I

    iget v4, v0, Ldy0;->d:I

    iget v0, v0, Ldy0;->c:I

    iget v5, p1, Ldy0;->b:I

    iget v6, p1, Ldy0;->d:I

    iget v7, p1, Ldy0;->c:I

    if-ge v2, v5, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    if-le v2, v5, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_5

    if-ge v0, v7, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_6

    if-le v0, v7, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    if-ne v2, v5, :cond_7

    if-ne v0, v7, :cond_7

    if-ge v4, v6, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    if-ne v2, v5, :cond_8

    if-ne v0, v7, :cond_8

    if-le v4, v6, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    if-eqz v0, :cond_9

    iput-object v1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_9
    iput-object p1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_a
    iput-object p1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_b
    iget-object v0, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    iput-object v0, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    iput-object p1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {v3, v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    return-void

    :cond_d
    iget-object v0, v0, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    if-eqz v0, :cond_e

    iput-object v1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {v3, v1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->g(Ldy0;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_e
    iput-object p1, v2, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    invoke-virtual {v3, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->g(Ldy0;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->z:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/util/calendar/calendar/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/util/calendar/calendar/a;->l:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh64;

    iget-object v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->w:Lsv8;

    invoke-static {v2, v3}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object v2

    iget-object v2, v2, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh64;

    invoke-static {p2, v3}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object p2

    iget-object p2, p2, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getYear()I

    move-result p2

    iget-object v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    iget-object v3, v1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    iget v5, v3, Ldy0;->d:I

    iget v6, v3, Ldy0;->c:I

    iget v3, v3, Ldy0;->b:I

    goto :goto_0

    :cond_0
    move v3, v4

    move v5, v3

    move v6, v5

    :goto_0
    iget-object v1, v1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ldy0;

    if-eqz v1, :cond_1

    iget v4, v1, Ldy0;->d:I

    iget v7, v1, Ldy0;->c:I

    iget v1, v1, Ldy0;->b:I

    move v9, v4

    move v4, v1

    move v1, v9

    goto :goto_1

    :cond_1
    move v1, v4

    move v7, v1

    :goto_1
    const/4 v8, 0x6

    iput v8, p1, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->w:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const-string v8, "selected_begin_year"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "selected_last_year"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "selected_begin_month"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "selected_last_month"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "selected_begin_day"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "selected_last_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "year"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "month"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->v:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "week_start"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->setMonthParams(Ljava/util/HashMap;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->t:Landroid/content/res/TypedArray;

    invoke-direct {p2, p1, v0}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    new-instance p1, Lcom/warefly/checkscan/util/calendar/calendar/a;

    invoke-direct {p1, p2, p0}, Lcom/warefly/checkscan/util/calendar/calendar/a;-><init>(Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;Lcom/warefly/checkscan/util/calendar/calendar/b;)V

    return-object p1
.end method
