.class public final synthetic Lt92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DatePickerDefaults;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerDefaults;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt92;->b:Landroidx/compose/material3/DatePickerDefaults;

    iput-object p2, p0, Lt92;->c:Ljava/lang/Long;

    iput p3, p0, Lt92;->d:I

    iput-object p4, p0, Lt92;->e:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p5, p0, Lt92;->f:Landroidx/compose/ui/Modifier;

    iput-wide p6, p0, Lt92;->g:J

    iput p8, p0, Lt92;->h:I

    iput p9, p0, Lt92;->i:I

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

    iget-object v0, p0, Lt92;->b:Landroidx/compose/material3/DatePickerDefaults;

    iget-object v1, p0, Lt92;->c:Ljava/lang/Long;

    iget v2, p0, Lt92;->d:I

    iget-object v3, p0, Lt92;->e:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v4, p0, Lt92;->f:Landroidx/compose/ui/Modifier;

    iget-wide v5, p0, Lt92;->g:J

    iget v7, p0, Lt92;->h:I

    iget v8, p0, Lt92;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerDefaults;->a(Landroidx/compose/material3/DatePickerDefaults;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
