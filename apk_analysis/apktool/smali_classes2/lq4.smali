.class public final synthetic Llq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/LinkComposer;

.field public final synthetic c:Landroidx/compose/runtime/MovableContentStateReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq4;->b:Landroidx/compose/runtime/LinkComposer;

    iput-object p2, p0, Llq4;->c:Landroidx/compose/runtime/MovableContentStateReference;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llq4;->b:Landroidx/compose/runtime/LinkComposer;

    iget-object p0, p0, Llq4;->c:Landroidx/compose/runtime/MovableContentStateReference;

    invoke-static {v0, p0}, Landroidx/compose/runtime/LinkComposer;->d(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0
.end method
