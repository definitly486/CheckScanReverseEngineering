.class public final synthetic Lya2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic f:Ly74;

.field public final synthetic g:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic h:Landroidx/compose/material3/SelectableDates;

.field public final synthetic i:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic j:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lbm3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya2;->b:Ljava/lang/Long;

    iput-object p2, p0, Lya2;->c:Ljava/lang/Long;

    iput-object p3, p0, Lya2;->d:Lbm3;

    iput-object p4, p0, Lya2;->e:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p5, p0, Lya2;->f:Ly74;

    iput-object p6, p0, Lya2;->g:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p7, p0, Lya2;->h:Landroidx/compose/material3/SelectableDates;

    iput-object p8, p0, Lya2;->i:Landroidx/compose/material3/DatePickerColors;

    iput-object p9, p0, Lya2;->j:Landroidx/compose/ui/focus/FocusRequester;

    iput p10, p0, Lya2;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lya2;->b:Ljava/lang/Long;

    iget-object v1, p0, Lya2;->c:Ljava/lang/Long;

    iget-object v2, p0, Lya2;->d:Lbm3;

    iget-object v3, p0, Lya2;->e:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v4, p0, Lya2;->f:Ly74;

    iget-object v5, p0, Lya2;->g:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v6, p0, Lya2;->h:Landroidx/compose/material3/SelectableDates;

    iget-object v7, p0, Lya2;->i:Landroidx/compose/material3/DatePickerColors;

    iget-object v8, p0, Lya2;->j:Landroidx/compose/ui/focus/FocusRequester;

    iget v9, p0, Lya2;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateRangeInputKt;->b(Ljava/lang/Long;Ljava/lang/Long;Lbm3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
