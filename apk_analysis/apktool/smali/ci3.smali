.class public final synthetic Lci3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Landroidx/compose/foundation/FocusableNode;


# direct methods
.method public synthetic constructor <init>(Lr07;Landroidx/compose/foundation/FocusableNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lci3;->b:Lr07;

    iput-object p2, p0, Lci3;->c:Landroidx/compose/foundation/FocusableNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lci3;->b:Lr07;

    iget-object p0, p0, Lci3;->c:Landroidx/compose/foundation/FocusableNode;

    invoke-static {v0, p0}, Landroidx/compose/foundation/FocusableNode;->b(Lr07;Landroidx/compose/foundation/FocusableNode;)Lj59;

    move-result-object p0

    return-object p0
.end method
