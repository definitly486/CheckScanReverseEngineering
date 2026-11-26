.class public final Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$lambda$1$0$$inlined$onDispose$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/ReportDrawnKt;->ReportDrawnWhen(Lll3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $compositionDrawn$inlined:Landroidx/activity/compose/ReportDrawnComposition;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/ReportDrawnComposition;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$lambda$1$0$$inlined$onDispose$2;->$compositionDrawn$inlined:Landroidx/activity/compose/ReportDrawnComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$lambda$1$0$$inlined$onDispose$2;->$compositionDrawn$inlined:Landroidx/activity/compose/ReportDrawnComposition;

    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->removeReporter()V

    return-void
.end method
