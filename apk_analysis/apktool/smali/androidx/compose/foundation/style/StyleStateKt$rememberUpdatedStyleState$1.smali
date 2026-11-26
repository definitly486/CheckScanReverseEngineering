.class public final Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/style/StyleStateKt;->rememberUpdatedStyleState(Landroidx/compose/foundation/interaction/InteractionSource;Ldm3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/style/StyleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm3<",
        "Landroidx/compose/foundation/style/MutableStyleState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;

    invoke-direct {v0}, Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;->INSTANCE:Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/style/MutableStyleState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;->invoke(Landroidx/compose/foundation/style/MutableStyleState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/style/MutableStyleState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 16
    return-void
.end method
