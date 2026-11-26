.class final Landroidx/compose/material3/NavigationDrawerKt$Scrim$dismissDrawer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->Scrim-Bx497Mc(ZLll3;Lll3;JLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onClose:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$Scrim$dismissDrawer$1$1;->$onClose:Lll3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lll3;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt$Scrim$dismissDrawer$1$1;->invoke$lambda$0(Lll3;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$0(Lll3;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/NavigationDrawerKt$Scrim$dismissDrawer$1$1;->$onClose:Lll3;

    new-instance v4, Landroidx/compose/material3/b3;

    invoke-direct {v4, p0}, Landroidx/compose/material3/b3;-><init>(Lll3;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lnl3;Lnl3;Ldm3;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
