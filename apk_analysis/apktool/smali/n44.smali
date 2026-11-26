.class public final synthetic Ln44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/Indication;

.field public final synthetic c:Landroidx/compose/foundation/interaction/InteractionSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln44;->b:Landroidx/compose/foundation/Indication;

    iput-object p1, p0, Ln44;->c:Landroidx/compose/foundation/interaction/InteractionSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Ln44;->b:Landroidx/compose/foundation/Indication;

    iget-object p0, p0, Ln44;->c:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/foundation/Indication;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
