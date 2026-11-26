.class public final synthetic Landroidx/compose/material3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic e:Ly74;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarMonth;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListState;Ly74;Landroidx/compose/material3/internal/CalendarMonth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/c0;->b:Ly22;

    iput-object p2, p0, Landroidx/compose/material3/c0;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/material3/c0;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p4, p0, Landroidx/compose/material3/c0;->e:Ly74;

    iput-object p5, p0, Landroidx/compose/material3/c0;->f:Landroidx/compose/material3/internal/CalendarMonth;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Landroidx/compose/material3/c0;->b:Ly22;

    iget-object v1, p0, Landroidx/compose/material3/c0;->c:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Landroidx/compose/material3/c0;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, p0, Landroidx/compose/material3/c0;->e:Ly74;

    iget-object v4, p0, Landroidx/compose/material3/c0;->f:Landroidx/compose/material3/internal/CalendarMonth;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$2$4$2;->a(Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListState;Ly74;Landroidx/compose/material3/internal/CalendarMonth;I)Lj59;

    move-result-object p0

    return-object p0
.end method
