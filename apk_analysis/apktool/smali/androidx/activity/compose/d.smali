.class public final synthetic Landroidx/activity/compose/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposeBackHandler;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/d;->b:Landroidx/activity/compose/ComposeBackHandler;

    iput-boolean p2, p0, Landroidx/activity/compose/d;->c:Z

    iput-object p3, p0, Landroidx/activity/compose/d;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/activity/compose/d;->c:Z

    iget-object v1, p0, Landroidx/activity/compose/d;->d:Lll3;

    iget-object p0, p0, Landroidx/activity/compose/d;->b:Landroidx/activity/compose/ComposeBackHandler;

    invoke-static {p0, v0, v1}, Landroidx/activity/compose/BackHandlerKt;->c(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
