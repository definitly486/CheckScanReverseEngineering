.class public final synthetic Landroidx/compose/runtime/saveable/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/saveable/SaveableHolder;

.field public final synthetic c:Landroidx/compose/runtime/saveable/Saver;

.field public final synthetic d:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/a;->b:Landroidx/compose/runtime/saveable/SaveableHolder;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/a;->c:Landroidx/compose/runtime/saveable/Saver;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/a;->d:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/a;->e:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/runtime/saveable/a;->f:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/runtime/saveable/a;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Landroidx/compose/runtime/saveable/a;->f:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/compose/runtime/saveable/a;->g:[Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/runtime/saveable/a;->b:Landroidx/compose/runtime/saveable/SaveableHolder;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/a;->c:Landroidx/compose/runtime/saveable/Saver;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/a;->d:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object v3, p0, Landroidx/compose/runtime/saveable/a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
