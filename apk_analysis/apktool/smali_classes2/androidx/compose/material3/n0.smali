.class public final synthetic Landroidx/compose/material3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/n0;->b:Lnl3;

    iput p2, p0, Landroidx/compose/material3/n0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/n0;->b:Lnl3;

    iget p0, p0, Landroidx/compose/material3/n0;->c:I

    invoke-static {p0, v0}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$1$1$1;->a(ILnl3;)Lj59;

    move-result-object p0

    return-object p0
.end method
