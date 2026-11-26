.class public final synthetic Lp92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/DateInputFormat;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic f:Ljava/util/Locale;

.field public final synthetic g:Landroidx/compose/material3/DateInputValidator;

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/runtime/MutableState;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ljava/util/Locale;Landroidx/compose/material3/DateInputValidator;ILandroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp92;->b:Landroidx/compose/material3/internal/DateInputFormat;

    iput-object p2, p0, Lp92;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lp92;->d:Lnl3;

    iput-object p4, p0, Lp92;->e:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p5, p0, Lp92;->f:Ljava/util/Locale;

    iput-object p6, p0, Lp92;->g:Landroidx/compose/material3/DateInputValidator;

    iput p7, p0, Lp92;->h:I

    iput-object p8, p0, Lp92;->i:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v7, p0, Lp92;->i:Landroidx/compose/runtime/MutableState;

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, p0, Lp92;->b:Landroidx/compose/material3/internal/DateInputFormat;

    iget-object v1, p0, Lp92;->c:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lp92;->d:Lnl3;

    iget-object v3, p0, Lp92;->e:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v4, p0, Lp92;->f:Ljava/util/Locale;

    iget-object v5, p0, Lp92;->g:Landroidx/compose/material3/DateInputValidator;

    iget v6, p0, Lp92;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/DateInputKt;->f(Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/runtime/MutableState;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ljava/util/Locale;Landroidx/compose/material3/DateInputValidator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)Lj59;

    move-result-object p0

    return-object p0
.end method
