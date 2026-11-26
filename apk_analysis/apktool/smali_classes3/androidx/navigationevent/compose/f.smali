.class public final synthetic Landroidx/navigationevent/compose/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Lll3;

.field public final synthetic f:Z

.field public final synthetic g:Lll3;

.field public final synthetic h:Lll3;

.field public final synthetic i:Landroidx/navigationevent/compose/NavigationEventState;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/f;->b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iput-boolean p2, p0, Landroidx/navigationevent/compose/f;->c:Z

    iput-object p3, p0, Landroidx/navigationevent/compose/f;->d:Lll3;

    iput-object p4, p0, Landroidx/navigationevent/compose/f;->e:Lll3;

    iput-boolean p5, p0, Landroidx/navigationevent/compose/f;->f:Z

    iput-object p6, p0, Landroidx/navigationevent/compose/f;->g:Lll3;

    iput-object p7, p0, Landroidx/navigationevent/compose/f;->h:Lll3;

    iput-object p8, p0, Landroidx/navigationevent/compose/f;->i:Landroidx/navigationevent/compose/NavigationEventState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object v6, p0, Landroidx/navigationevent/compose/f;->h:Lll3;

    iget-object v7, p0, Landroidx/navigationevent/compose/f;->i:Landroidx/navigationevent/compose/NavigationEventState;

    iget-object v0, p0, Landroidx/navigationevent/compose/f;->b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iget-boolean v1, p0, Landroidx/navigationevent/compose/f;->c:Z

    iget-object v2, p0, Landroidx/navigationevent/compose/f;->d:Lll3;

    iget-object v3, p0, Landroidx/navigationevent/compose/f;->e:Lll3;

    iget-boolean v4, p0, Landroidx/navigationevent/compose/f;->f:Z

    iget-object v5, p0, Landroidx/navigationevent/compose/f;->g:Lll3;

    invoke-static/range {v0 .. v7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->k(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)Lj59;

    move-result-object p0

    return-object p0
.end method
