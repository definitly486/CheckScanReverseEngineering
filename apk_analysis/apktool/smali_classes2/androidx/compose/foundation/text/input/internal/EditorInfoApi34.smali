.class final Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setHandwritingGestures(Landroid/view/inputmethod/EditorInfo;)V
    .locals 7

    const-class v0, Landroid/view/inputmethod/SelectGesture;

    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    const-class v2, Landroid/view/inputmethod/SelectRangeGesture;

    const-class v3, Landroid/view/inputmethod/DeleteRangeGesture;

    const-class v4, Landroid/view/inputmethod/JoinOrSplitGesture;

    const-class v5, Landroid/view/inputmethod/InsertGesture;

    const-class v6, Landroid/view/inputmethod/RemoveSpaceGesture;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGestures(Ljava/util/List;)V

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V

    return-void
.end method
