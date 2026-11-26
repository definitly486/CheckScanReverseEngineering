.class public final synthetic Lz92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Ly74;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/material3/SelectableDates;

.field public final synthetic g:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz92;->b:Ljava/lang/Long;

    iput-object p2, p0, Lz92;->c:Ljava/lang/Long;

    iput-object p3, p0, Lz92;->d:Ly74;

    iput p4, p0, Lz92;->e:I

    iput-object p5, p0, Lz92;->f:Landroidx/compose/material3/SelectableDates;

    iput-object p6, p0, Lz92;->g:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lz92;->f:Landroidx/compose/material3/SelectableDates;

    iget-object v5, p0, Lz92;->g:Ljava/util/Locale;

    iget-object v0, p0, Lz92;->b:Ljava/lang/Long;

    iget-object v1, p0, Lz92;->c:Ljava/lang/Long;

    iget-object v2, p0, Lz92;->d:Ly74;

    iget v3, p0, Lz92;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt;->s(Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;)Landroidx/compose/material3/DatePickerStateImpl;

    move-result-object p0

    return-object p0
.end method
