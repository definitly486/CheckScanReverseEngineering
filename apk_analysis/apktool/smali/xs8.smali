.class public final synthetic Lxs8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public synthetic constructor <init>(Lr07;ILandroidx/compose/ui/text/TextStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxs8;->b:Lr07;

    iput p2, p0, Lxs8;->c:I

    iput-object p3, p0, Lxs8;->d:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxs8;->d:Landroidx/compose/ui/text/TextStyle;

    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    iget-object v1, p0, Lxs8;->b:Lr07;

    iget p0, p0, Lxs8;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/modifiers/TextStyleProviderNodeKt;->a(Lr07;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
