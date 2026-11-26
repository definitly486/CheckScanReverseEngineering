.class public final Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/compose/internal/BackHandlerCompat;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/internal/BackHandlerCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackCancelled()V

    return-void
.end method

.method public handleOnBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackCompleted()V

    return-void
.end method

.method public handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackStarted(Landroidx/activity/BackEventCompat;)V

    return-void
.end method
