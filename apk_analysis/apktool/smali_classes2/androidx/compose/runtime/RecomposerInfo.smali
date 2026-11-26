.class public interface abstract Landroidx/compose/runtime/RecomposerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/RecomposerInfo$Companion;
    }
.end annotation


# static fields
.field public static final synthetic Companion:Landroidx/compose/runtime/RecomposerInfo$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/RecomposerInfo$Companion;->$$INSTANCE:Landroidx/compose/runtime/RecomposerInfo$Companion;

    sput-object v0, Landroidx/compose/runtime/RecomposerInfo;->Companion:Landroidx/compose/runtime/RecomposerInfo$Companion;

    return-void
.end method

.method public static synthetic getErrorState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getChangeCount()J
.end method

.method public getErrorState()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/compose/runtime/RecomposerErrorInformation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/RecomposerInfo$Companion;->access$getDefaultErrorStateFlow$p()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public abstract getHasPendingWork()Z
.end method

.method public abstract getState()Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation
.end method

.method public observe(Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
