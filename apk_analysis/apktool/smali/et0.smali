.class public final synthetic Let0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Let0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Let0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr15;

    invoke-static {p1}, Lyads/hn2;->a(Lr15;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/gl1;->d(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/fr1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/e92;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/compose/material3/TopAppBarState;->b(Ljava/util/List;)Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/posthog/surveys/SurveyAppearancePosition;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyAppearancePosition$Companion;->a(Lcom/posthog/surveys/SurveyAppearancePosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {p1}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->b(Landroidx/compose/ui/text/input/ImeAction;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/material3/SheetValue;

    invoke-static {p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->g(Landroidx/compose/material3/SheetValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

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
