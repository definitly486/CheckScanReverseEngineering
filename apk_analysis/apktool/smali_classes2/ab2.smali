.class public final synthetic Lab2;
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

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Ljava/util/Locale;

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DateRangePickerDefaults;Ljava/lang/Long;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JLjava/lang/String;Ljava/lang/String;Lbm3;Lbm3;Lbm3;Ljava/util/Locale;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab2;->b:Landroidx/compose/material3/DateRangePickerDefaults;

    iput-object p2, p0, Lab2;->c:Ljava/lang/Long;

    iput-object p3, p0, Lab2;->d:Ljava/lang/Long;

    iput p4, p0, Lab2;->e:I

    iput-object p5, p0, Lab2;->f:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p6, p0, Lab2;->g:Landroidx/compose/ui/Modifier;

    iput-wide p7, p0, Lab2;->h:J

    iput-object p9, p0, Lab2;->i:Ljava/lang/String;

    iput-object p10, p0, Lab2;->j:Ljava/lang/String;

    iput-object p11, p0, Lab2;->k:Lbm3;

    iput-object p12, p0, Lab2;->l:Lbm3;

    iput-object p13, p0, Lab2;->m:Lbm3;

    iput-object p14, p0, Lab2;->n:Ljava/util/Locale;

    iput p15, p0, Lab2;->o:I

    move/from16 p1, p16

    iput p1, p0, Lab2;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lab2;->b:Landroidx/compose/material3/DateRangePickerDefaults;

    iget-object v2, v0, Lab2;->c:Ljava/lang/Long;

    iget-object v3, v0, Lab2;->d:Ljava/lang/Long;

    iget v4, v0, Lab2;->e:I

    iget-object v5, v0, Lab2;->f:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v6, v0, Lab2;->g:Landroidx/compose/ui/Modifier;

    iget-wide v7, v0, Lab2;->h:J

    iget-object v9, v0, Lab2;->i:Ljava/lang/String;

    iget-object v10, v0, Lab2;->j:Ljava/lang/String;

    iget-object v11, v0, Lab2;->k:Lbm3;

    iget-object v12, v0, Lab2;->l:Lbm3;

    iget-object v13, v0, Lab2;->m:Lbm3;

    iget-object v14, v0, Lab2;->n:Ljava/util/Locale;

    iget v15, v0, Lab2;->o:I

    iget v0, v0, Lab2;->p:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/DateRangePickerDefaults;->b(Landroidx/compose/material3/DateRangePickerDefaults;Ljava/lang/Long;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JLjava/lang/String;Ljava/lang/String;Lbm3;Lbm3;Lbm3;Ljava/util/Locale;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
