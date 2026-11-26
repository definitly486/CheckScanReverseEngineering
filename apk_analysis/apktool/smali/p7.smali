.class public final synthetic Lp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ActivityResultLauncherHolder;

.field public final synthetic c:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/activity/result/contract/ActivityResultContract;

.field public final synthetic f:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7;->b:Landroidx/activity/compose/ActivityResultLauncherHolder;

    iput-object p2, p0, Lp7;->c:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p3, p0, Lp7;->d:Ljava/lang/String;

    iput-object p4, p0, Lp7;->e:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p5, p0, Lp7;->f:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lp7;->f:Landroidx/compose/runtime/State;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v0, p0, Lp7;->b:Landroidx/activity/compose/ActivityResultLauncherHolder;

    iget-object v1, p0, Lp7;->c:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v2, p0, Lp7;->d:Ljava/lang/String;

    iget-object v3, p0, Lp7;->e:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-static/range {v0 .. v5}, Landroidx/activity/compose/ActivityResultRegistryKt;->b(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
