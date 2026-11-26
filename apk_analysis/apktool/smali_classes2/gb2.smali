.class public final synthetic Lgb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Ly74;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/material3/SelectableDates;

.field public final synthetic h:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb2;->b:Ljava/lang/Long;

    iput-object p2, p0, Lgb2;->c:Ljava/lang/Long;

    iput-object p3, p0, Lgb2;->d:Ljava/lang/Long;

    iput-object p4, p0, Lgb2;->e:Ly74;

    iput p5, p0, Lgb2;->f:I

    iput-object p6, p0, Lgb2;->g:Landroidx/compose/material3/SelectableDates;

    iput-object p7, p0, Lgb2;->h:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lgb2;->g:Landroidx/compose/material3/SelectableDates;

    iget-object v6, p0, Lgb2;->h:Ljava/util/Locale;

    iget-object v0, p0, Lgb2;->b:Ljava/lang/Long;

    iget-object v1, p0, Lgb2;->c:Ljava/lang/Long;

    iget-object v2, p0, Lgb2;->d:Ljava/lang/Long;

    iget-object v3, p0, Lgb2;->e:Ly74;

    iget v4, p0, Lgb2;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DateRangePickerKt;->d(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;)Landroidx/compose/material3/DateRangePickerStateImpl;

    move-result-object p0

    return-object p0
.end method
