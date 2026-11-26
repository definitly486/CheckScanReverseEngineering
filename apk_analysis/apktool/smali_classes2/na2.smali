.class public final synthetic Lna2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILnl3;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna2;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lna2;->c:I

    iput-object p3, p0, Lna2;->d:Lnl3;

    iput-object p4, p0, Lna2;->e:Landroidx/compose/material3/DatePickerColors;

    iput p5, p0, Lna2;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lna2;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lna2;->c:I

    iget-object v2, p0, Lna2;->d:Lnl3;

    iget-object v3, p0, Lna2;->e:Landroidx/compose/material3/DatePickerColors;

    iget v4, p0, Lna2;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DatePickerKt;->i(Landroidx/compose/ui/Modifier;ILnl3;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
