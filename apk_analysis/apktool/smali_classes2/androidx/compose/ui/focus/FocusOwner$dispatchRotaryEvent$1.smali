.class final Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusOwner;->dispatchRotaryEvent$default(Landroidx/compose/ui/focus/FocusOwner;Landroidx/compose/ui/input/rotary/RotaryScrollEvent;Lll3;ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    .line 5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwner$dispatchRotaryEvent$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
