.class public interface abstract Landroidx/compose/foundation/text/input/InputTransformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/InputTransformation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/input/InputTransformation$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/input/InputTransformation$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/input/InputTransformation$Companion;

    sput-object v0, Landroidx/compose/foundation/text/input/InputTransformation;->Companion:Landroidx/compose/foundation/text/input/InputTransformation$Companion;

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    return-void
.end method

.method public getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract transformInput(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
.end method
