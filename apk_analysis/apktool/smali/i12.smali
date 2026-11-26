.class public final synthetic Li12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li12;->b:Z

    iput-object p2, p0, Li12;->c:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Li12;->b:Z

    iget-object p0, p0, Li12;->c:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->o(ZLandroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)Lj59;

    move-result-object p0

    return-object p0
.end method
