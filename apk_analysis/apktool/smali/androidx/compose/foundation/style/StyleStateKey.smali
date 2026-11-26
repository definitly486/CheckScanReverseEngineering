.class public Landroidx/compose/foundation/style/StyleStateKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/style/StyleStateKey$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

.field private static final Enabled:Landroidx/compose/foundation/style/StyleStateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final Focused:Landroidx/compose/foundation/style/StyleStateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hovered:Landroidx/compose/foundation/style/StyleStateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final Pressed:Landroidx/compose/foundation/style/StyleStateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final Selected:Landroidx/compose/foundation/style/StyleStateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/foundation/style/StyleStateKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/style/StyleStateKey$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    new-instance v0, Landroidx/compose/foundation/style/BooleanPredefinedKey;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZILjh2;)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Pressed:Landroidx/compose/foundation/style/StyleStateKey;

    new-instance v0, Landroidx/compose/foundation/style/BooleanPredefinedKey;

    invoke-direct {v0, v4, v3, v4, v1}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZILjh2;)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Hovered:Landroidx/compose/foundation/style/StyleStateKey;

    new-instance v0, Landroidx/compose/foundation/style/BooleanPredefinedKey;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v3, v4, v1}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZILjh2;)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Focused:Landroidx/compose/foundation/style/StyleStateKey;

    new-instance v0, Landroidx/compose/foundation/style/BooleanPredefinedKey;

    const/16 v5, 0x8

    invoke-direct {v0, v5, v3, v4, v1}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZILjh2;)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Selected:Landroidx/compose/foundation/style/StyleStateKey;

    new-instance v0, Landroidx/compose/foundation/style/BooleanPredefinedKey;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZ)V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Enabled:Landroidx/compose/foundation/style/StyleStateKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleStateKey;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getEnabled$cp()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Enabled:Landroidx/compose/foundation/style/StyleStateKey;

    return-object v0
.end method

.method public static final synthetic access$getFocused$cp()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Focused:Landroidx/compose/foundation/style/StyleStateKey;

    return-object v0
.end method

.method public static final synthetic access$getHovered$cp()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Hovered:Landroidx/compose/foundation/style/StyleStateKey;

    return-object v0
.end method

.method public static final synthetic access$getPressed$cp()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Pressed:Landroidx/compose/foundation/style/StyleStateKey;

    return-object v0
.end method

.method public static final synthetic access$getSelected$cp()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Selected:Landroidx/compose/foundation/style/StyleStateKey;

    return-object v0
.end method

.method public static synthetic processInteraction$suspendImpl(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getDefaultValue$foundation()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleStateKey;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/MutableStyleState;->getCustomValue$foundation(Landroidx/compose/foundation/style/StyleStateKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public processInteraction(Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/style/StyleStateKey;->processInteraction$suspendImpl(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final processInteractionAccess$foundation(Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/style/StyleStateKey;->processInteraction(Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public setValueTo$foundation(Ljava/lang/Object;Landroidx/compose/foundation/style/MutableStyleState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setCustomValue$foundation(Landroidx/compose/foundation/style/StyleStateKey;Ljava/lang/Object;)V

    return-void
.end method
