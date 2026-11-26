.class public final synthetic Landroidx/compose/material3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly74;

.field public final synthetic c:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/material3/SelectableDates;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public synthetic constructor <init>(Ly74;Landroidx/compose/material3/internal/CalendarModel;IILnl3;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/m0;->b:Ly74;

    iput-object p2, p0, Landroidx/compose/material3/m0;->c:Landroidx/compose/material3/internal/CalendarModel;

    iput p3, p0, Landroidx/compose/material3/m0;->d:I

    iput p4, p0, Landroidx/compose/material3/m0;->e:I

    iput-object p5, p0, Landroidx/compose/material3/m0;->f:Lnl3;

    iput-object p6, p0, Landroidx/compose/material3/m0;->g:Landroidx/compose/material3/SelectableDates;

    iput-object p7, p0, Landroidx/compose/material3/m0;->h:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v6, p0, Landroidx/compose/material3/m0;->h:Landroidx/compose/material3/DatePickerColors;

    move-object v7, p1

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    iget-object v0, p0, Landroidx/compose/material3/m0;->b:Ly74;

    iget-object v1, p0, Landroidx/compose/material3/m0;->c:Landroidx/compose/material3/internal/CalendarModel;

    iget v2, p0, Landroidx/compose/material3/m0;->d:I

    iget v3, p0, Landroidx/compose/material3/m0;->e:I

    iget-object v4, p0, Landroidx/compose/material3/m0;->f:Lnl3;

    iget-object v5, p0, Landroidx/compose/material3/m0;->g:Landroidx/compose/material3/SelectableDates;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->a(Ly74;Landroidx/compose/material3/internal/CalendarModel;IILnl3;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/foundation/lazy/grid/LazyGridScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
