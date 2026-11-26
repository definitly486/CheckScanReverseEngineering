.class public final Landroidx/compose/foundation/style/StyleInnerElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/style/StyleInnerNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/style/StyleInnerElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/style/StyleInnerElement;

    invoke-direct {v0}, Landroidx/compose/foundation/style/StyleInnerElement;-><init>()V

    sput-object v0, Landroidx/compose/foundation/style/StyleInnerElement;->INSTANCE:Landroidx/compose/foundation/style/StyleInnerElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/style/StyleInnerNode;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/style/StyleInnerNode;

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleInnerNode;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/style/StyleInnerElement;->create()Landroidx/compose/foundation/style/StyleInnerNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/internal/System_jvmAndAndroidKt;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    return-void
.end method

.method public update(Landroidx/compose/foundation/style/StyleInnerNode;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/style/StyleInnerNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/StyleInnerElement;->update(Landroidx/compose/foundation/style/StyleInnerNode;)V

    return-void
.end method
