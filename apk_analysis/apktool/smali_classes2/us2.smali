.class public final synthetic Lus2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lus2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lus2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/qj1;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->x(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->c(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaverKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->c(Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/NavGraph$Companion;->a(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/posthog/surveys/SurveyQuestionType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestionType;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/window/embedding/EmbeddingBackend;

    invoke-static {p1}, Landroidx/window/embedding/EmbeddingBackend$Companion;->b(Landroidx/window/embedding/EmbeddingBackend;)Landroidx/window/embedding/EmbeddingBackend;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/material3/DrawerValue;

    invoke-static {p1}, Landroidx/compose/material3/DrawerState;->b(Landroidx/compose/material3/DrawerValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
