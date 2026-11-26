.class final Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# instance fields
.field private updateStateOnAttach:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;->updateStateOnAttach:Lll3;

    return-void
.end method


# virtual methods
.method public final getUpdateStateOnAttach()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;->updateStateOnAttach:Lll3;

    return-object p0
.end method

.method public onAttach()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;->updateStateOnAttach:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setUpdateStateOnAttach(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;->updateStateOnAttach:Lll3;

    return-void
.end method
