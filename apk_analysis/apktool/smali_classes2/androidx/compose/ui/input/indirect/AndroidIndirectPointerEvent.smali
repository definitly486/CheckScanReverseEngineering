.class public final Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/indirect/PlatformIndirectPointerEvent;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeEvent:Landroid/view/MotionEvent;

.field private final primaryDirectionalMotionAxis:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/util/List;IILandroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
            ">;II",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->changes:Ljava/util/List;

    iput p2, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->type:I

    iput p3, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->primaryDirectionalMotionAxis:I

    iput-object p4, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->nativeEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "changes cannot be empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILandroid/view/MotionEvent;Ljh2;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;-><init>(Ljava/util/List;IILandroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->changes:Ljava/util/List;

    return-object p0
.end method

.method public final getNativeEvent$ui()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->nativeEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getPrimaryDirectionalMotionAxis-nZO2Niw()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->primaryDirectionalMotionAxis:I

    return p0
.end method

.method public getType-4ZHQPSE()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->type:I

    return p0
.end method
