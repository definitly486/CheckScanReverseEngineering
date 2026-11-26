.class public final synthetic Lba2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/material3/SelectableDates;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic g:Ly74;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLnl3;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba2;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lba2;->c:J

    iput-object p4, p0, Lba2;->d:Lnl3;

    iput-object p5, p0, Lba2;->e:Landroidx/compose/material3/SelectableDates;

    iput-object p6, p0, Lba2;->f:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p7, p0, Lba2;->g:Ly74;

    iput-object p8, p0, Lba2;->h:Landroidx/compose/material3/DatePickerColors;

    iput p9, p0, Lba2;->i:I

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

    iget-object v0, p0, Lba2;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lba2;->c:J

    iget-object v3, p0, Lba2;->d:Lnl3;

    iget-object v4, p0, Lba2;->e:Landroidx/compose/material3/SelectableDates;

    iget-object v5, p0, Lba2;->f:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v6, p0, Lba2;->g:Ly74;

    iget-object v7, p0, Lba2;->h:Landroidx/compose/material3/DatePickerColors;

    iget v8, p0, Lba2;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->z(Landroidx/compose/ui/Modifier;JLnl3;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
