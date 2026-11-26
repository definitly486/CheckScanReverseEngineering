.class public final synthetic Ln92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic e:Ly74;

.field public final synthetic f:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic g:Landroidx/compose/material3/SelectableDates;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic i:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln92;->b:Ljava/lang/Long;

    iput-object p2, p0, Ln92;->c:Lnl3;

    iput-object p3, p0, Ln92;->d:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p4, p0, Ln92;->e:Ly74;

    iput-object p5, p0, Ln92;->f:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p6, p0, Ln92;->g:Landroidx/compose/material3/SelectableDates;

    iput-object p7, p0, Ln92;->h:Landroidx/compose/material3/DatePickerColors;

    iput-object p8, p0, Ln92;->i:Landroidx/compose/ui/focus/FocusRequester;

    iput p9, p0, Ln92;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Ln92;->b:Ljava/lang/Long;

    iget-object v1, p0, Ln92;->c:Lnl3;

    iget-object v2, p0, Ln92;->d:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v3, p0, Ln92;->e:Ly74;

    iget-object v4, p0, Ln92;->f:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v5, p0, Ln92;->g:Landroidx/compose/material3/SelectableDates;

    iget-object v6, p0, Ln92;->h:Landroidx/compose/material3/DatePickerColors;

    iget-object v7, p0, Ln92;->i:Landroidx/compose/ui/focus/FocusRequester;

    iget v8, p0, Ln92;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DateInputKt;->b(Ljava/lang/Long;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
