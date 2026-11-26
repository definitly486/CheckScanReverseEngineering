.class public final synthetic Landroidx/compose/foundation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/CombinedClickableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/CombinedClickableNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/d;->b:Landroidx/compose/foundation/CombinedClickableNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/d;->b:Landroidx/compose/foundation/CombinedClickableNode;

    invoke-static {p0}, Landroidx/compose/foundation/CombinedClickableNode;->d(Landroidx/compose/foundation/CombinedClickableNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
