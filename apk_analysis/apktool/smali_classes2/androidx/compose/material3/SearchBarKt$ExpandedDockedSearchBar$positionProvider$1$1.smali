.class public final Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $state:Landroidx/compose/material3/SearchBarState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;->$state:Landroidx/compose/material3/SearchBarState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;->$state:Landroidx/compose/material3/SearchBarState;

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->access$getCollapsedBounds(Landroidx/compose/material3/SearchBarState;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTopLeft-nOcc-ac()J

    move-result-wide p0

    return-wide p0
.end method
