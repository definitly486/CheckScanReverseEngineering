.class final Landroidx/compose/ui/focus/InvalidateSemantics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/focus/InvalidateSemantics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/InvalidateSemantics;

    invoke-direct {v0}, Landroidx/compose/ui/focus/InvalidateSemantics;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/InvalidateSemantics;->INSTANCE:Landroidx/compose/ui/focus/InvalidateSemantics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDispatchEventsCompleted(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    instance-of p1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_1
    return-void
.end method
