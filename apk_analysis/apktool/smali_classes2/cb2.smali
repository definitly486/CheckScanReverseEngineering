.class public final synthetic Lcb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DateRangePickerDefaults;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:J

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DateRangePickerDefaults;Ljava/lang/Long;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb2;->b:Landroidx/compose/material3/DateRangePickerDefaults;

    iput-object p2, p0, Lcb2;->c:Ljava/lang/Long;

    iput-object p3, p0, Lcb2;->d:Ljava/lang/Long;

    iput p4, p0, Lcb2;->e:I

    iput-object p5, p0, Lcb2;->f:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p6, p0, Lcb2;->g:Landroidx/compose/ui/Modifier;

    iput-wide p7, p0, Lcb2;->h:J

    iput p9, p0, Lcb2;->i:I

    iput p10, p0, Lcb2;->j:I

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

    iget-object v0, p0, Lcb2;->b:Landroidx/compose/material3/DateRangePickerDefaults;

    iget-object v1, p0, Lcb2;->c:Ljava/lang/Long;

    iget-object v2, p0, Lcb2;->d:Ljava/lang/Long;

    iget v3, p0, Lcb2;->e:I

    iget-object v4, p0, Lcb2;->f:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v5, p0, Lcb2;->g:Landroidx/compose/ui/Modifier;

    iget-wide v6, p0, Lcb2;->h:J

    iget v8, p0, Lcb2;->i:I

    iget v9, p0, Lcb2;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerDefaults;->c(Landroidx/compose/material3/DateRangePickerDefaults;Ljava/lang/Long;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
