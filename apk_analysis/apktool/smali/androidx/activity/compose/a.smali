.class public final synthetic Landroidx/activity/compose/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposeBackHandler;

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposeBackHandler;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/a;->b:Landroidx/activity/compose/ComposeBackHandler;

    iput-object p2, p0, Landroidx/activity/compose/a;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/a;->b:Landroidx/activity/compose/ComposeBackHandler;

    iget-object p0, p0, Landroidx/activity/compose/a;->c:Lll3;

    invoke-static {v0, p0}, Landroidx/activity/compose/BackHandlerKt;->f(Landroidx/activity/compose/ComposeBackHandler;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
