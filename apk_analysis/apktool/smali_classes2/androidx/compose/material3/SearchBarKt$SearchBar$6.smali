.class final Landroidx/compose/material3/SearchBarKt$SearchBar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBar-WuY5d9Q(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbm3<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $active:Z

.field final synthetic $colors:Landroidx/compose/material3/SearchBarColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $leadingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onActiveChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onQueryChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSearch:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $trailingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SearchBarColors;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;ZLbm3;Lbm3;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarColors;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;Z",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$colors:Landroidx/compose/material3/SearchBarColors;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$query:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onQueryChange:Lnl3;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onSearch:Lnl3;

    iput-boolean p5, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$active:Z

    iput-object p6, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onActiveChange:Lnl3;

    iput-boolean p7, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$enabled:Z

    iput-object p8, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$placeholder:Lbm3;

    iput-object p9, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$leadingIcon:Lbm3;

    iput-object p10, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$trailingIcon:Lbm3;

    iput-object p11, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    move-object/from16 v5, p1

    invoke-interface {v5, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SearchBar.<anonymous> (SearchBar.kt:1969)"

    const v6, -0x5f32ede2

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v5, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    iget-object v1, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$colors:Landroidx/compose/material3/SearchBarColors;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarColors;->getInputFieldColors()Landroidx/compose/material3/TextFieldColors;

    move-result-object v16

    iget-object v6, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$query:Ljava/lang/String;

    iget-object v7, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onQueryChange:Lnl3;

    iget-object v8, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onSearch:Lnl3;

    iget-boolean v9, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$active:Z

    iget-object v10, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$onActiveChange:Lnl3;

    iget-boolean v12, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$enabled:Z

    iget-object v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$placeholder:Lbm3;

    iget-object v14, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$leadingIcon:Lbm3;

    iget-object v15, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$trailingIcon:Lbm3;

    iget-object v0, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v20, 0x180

    const/16 v21, 0x0

    const/high16 v19, 0x30000

    move-object/from16 v18, p1

    move-object/from16 v17, v0

    invoke-virtual/range {v5 .. v21}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
