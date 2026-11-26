.class public final synthetic Lu92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DatePickerDefaults;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerDefaults;ILandroidx/compose/ui/Modifier;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu92;->b:Landroidx/compose/material3/DatePickerDefaults;

    iput p2, p0, Lu92;->c:I

    iput-object p3, p0, Lu92;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lu92;->e:J

    iput p6, p0, Lu92;->f:I

    iput p7, p0, Lu92;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lu92;->b:Landroidx/compose/material3/DatePickerDefaults;

    iget v1, p0, Lu92;->c:I

    iget-object v2, p0, Lu92;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lu92;->e:J

    iget v5, p0, Lu92;->f:I

    iget v6, p0, Lu92;->g:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/DatePickerDefaults;->c(Landroidx/compose/material3/DatePickerDefaults;ILandroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
