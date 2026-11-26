.class public final synthetic Landroidx/compose/material3/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly74;

.field public final synthetic c:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic d:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarDate;

.field public final synthetic g:Ljava/lang/Long;

.field public final synthetic h:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic i:Landroidx/compose/material3/SelectableDates;

.field public final synthetic j:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public synthetic constructor <init>(Ly74;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lnl3;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/h0;->b:Ly74;

    iput-object p2, p0, Landroidx/compose/material3/h0;->c:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p3, p0, Landroidx/compose/material3/h0;->d:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p4, p0, Landroidx/compose/material3/h0;->e:Lnl3;

    iput-object p5, p0, Landroidx/compose/material3/h0;->f:Landroidx/compose/material3/internal/CalendarDate;

    iput-object p6, p0, Landroidx/compose/material3/h0;->g:Ljava/lang/Long;

    iput-object p7, p0, Landroidx/compose/material3/h0;->h:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p8, p0, Landroidx/compose/material3/h0;->i:Landroidx/compose/material3/SelectableDates;

    iput-object p9, p0, Landroidx/compose/material3/h0;->j:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v8, p0, Landroidx/compose/material3/h0;->j:Landroidx/compose/material3/DatePickerColors;

    move-object v9, p1

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListScope;

    iget-object v0, p0, Landroidx/compose/material3/h0;->b:Ly74;

    iget-object v1, p0, Landroidx/compose/material3/h0;->c:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v2, p0, Landroidx/compose/material3/h0;->d:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v3, p0, Landroidx/compose/material3/h0;->e:Lnl3;

    iget-object v4, p0, Landroidx/compose/material3/h0;->f:Landroidx/compose/material3/internal/CalendarDate;

    iget-object v5, p0, Landroidx/compose/material3/h0;->g:Ljava/lang/Long;

    iget-object v6, p0, Landroidx/compose/material3/h0;->h:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v7, p0, Landroidx/compose/material3/h0;->i:Landroidx/compose/material3/SelectableDates;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1;->d(Ly74;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lnl3;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/foundation/lazy/LazyListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
