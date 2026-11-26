.class public final synthetic Lra2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:J

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic g:Ly74;

.field public final synthetic h:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic i:Landroidx/compose/material3/SelectableDates;

.field public final synthetic j:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;JLnl3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra2;->b:Ljava/lang/Long;

    iput-wide p2, p0, Lra2;->c:J

    iput-object p4, p0, Lra2;->d:Lnl3;

    iput-object p5, p0, Lra2;->e:Lnl3;

    iput-object p6, p0, Lra2;->f:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p7, p0, Lra2;->g:Ly74;

    iput-object p8, p0, Lra2;->h:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p9, p0, Lra2;->i:Landroidx/compose/material3/SelectableDates;

    iput-object p10, p0, Lra2;->j:Landroidx/compose/material3/DatePickerColors;

    iput p11, p0, Lra2;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lra2;->b:Ljava/lang/Long;

    iget-wide v1, p0, Lra2;->c:J

    iget-object v3, p0, Lra2;->d:Lnl3;

    iget-object v4, p0, Lra2;->e:Lnl3;

    iget-object v5, p0, Lra2;->f:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v6, p0, Lra2;->g:Ly74;

    iget-object v7, p0, Lra2;->h:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v8, p0, Lra2;->i:Landroidx/compose/material3/SelectableDates;

    iget-object v9, p0, Lra2;->j:Landroidx/compose/material3/DatePickerColors;

    iget v10, p0, Lra2;->k:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/DatePickerKt;->l(Ljava/lang/Long;JLnl3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
