.class public interface abstract Landroidx/compose/foundation/layout/PaddingValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/PaddingValues$Absolute;,
        Landroidx/compose/foundation/layout/PaddingValues$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/layout/PaddingValues$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/PaddingValues$Companion;->$$INSTANCE:Landroidx/compose/foundation/layout/PaddingValues$Companion;

    sput-object v0, Landroidx/compose/foundation/layout/PaddingValues;->Companion:Landroidx/compose/foundation/layout/PaddingValues$Companion;

    return-void
.end method


# virtual methods
.method public abstract calculateBottomPadding-D9Ej5fM()F
.end method

.method public abstract calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
.end method

.method public abstract calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
.end method

.method public abstract calculateTopPadding-D9Ej5fM()F
.end method
