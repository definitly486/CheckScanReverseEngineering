.class final Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/MediaQueryKt;->derivedMediaQuery(Lnl3;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
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


# instance fields
.field final synthetic $currentQuery$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lnl3<",
            "Landroidx/compose/ui/UiMediaScope;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $mediaScope:Landroidx/compose/ui/UiMediaScope;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/UiMediaScope;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/UiMediaScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/UiMediaScope;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;->$mediaScope:Landroidx/compose/ui/UiMediaScope;

    iput-object p2, p0, Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;->$currentQuery$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;->$currentQuery$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/ui/MediaQueryKt;->access$derivedMediaQuery$lambda$0(Landroidx/compose/runtime/State;)Lnl3;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;->$mediaScope:Landroidx/compose/ui/UiMediaScope;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/MediaQueryKt$derivedMediaQuery$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
