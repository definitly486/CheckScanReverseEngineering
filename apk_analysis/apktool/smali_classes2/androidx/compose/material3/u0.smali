.class public final synthetic Landroidx/compose/material3/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DateRangePickerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DateRangePickerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/u0;->b:Landroidx/compose/material3/DateRangePickerState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    iget-object p0, p0, Landroidx/compose/material3/u0;->b:Landroidx/compose/material3/DateRangePickerState;

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$6;->a(Landroidx/compose/material3/DateRangePickerState;Ljava/lang/Long;Ljava/lang/Long;)Lj59;

    move-result-object p0

    return-object p0
.end method
